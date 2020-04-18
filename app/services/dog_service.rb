class DogService
    def self.create_dog(params, current_user)
        Dog.transaction do
            dog = Dog.new
            dog.assign_attributes(params[:dog].to_h)
            dog.user_id = current_user.id
            dog.save!

            breed_ids = params[:breeds].split(",")
            breed_ids.each do | id |
                dog.breeds << Breed.find(id)
            end

            image_urls = params[:dog_images]
            image_urls.each_with_index do | url, i |
                dog.dog_images << DogImage.create({
                    url: url,
                    main_image: i == 0 ? true : false
                })
            end

            return dog
        end
    end

    def self.update_dog(params, current_user)
        Dog.transaction do
            dog = Dog.find(params[:id])
            dog.assign_attributes(params[:dog].to_h)
            dog.user_id = current_user.id
            dog.save!

            breed_ids = params[:breeds].split(",")
            breed_ids.each do | id |
                dog.breeds << Breed.find(id)
            end

            image_urls = params[:dog_images]
            image_urls.each_with_index do | url, i |
                dog.dog_images << DogImage.create({
                    url: url,
                    main_image: i == 0 ? true : false
                })
            end

            return dog
        end
    end

    def self.search_dogs(options = {})
        # Filter by:
        # 1) Name ✅
        # 2) Age range (start and end dates) ✅
        # 3) Gender ✅
        # 4) Breed (can be multiple) ✅
        # 5) Papered ✅
        # 6) Registered ✅
        # 7) Eye color ✅
        # 8) Miles away (low and high range) - haven’t worked on this at all really ⌛(pending)
        # 9) Favorite ✅
        query_params = {
            name_filter: "%#{options[:name]}%",
            gender: options[:gender],
            papered: options[:papered],
            registered: options[:registered],
            eyes: options[:eyes],
            user_id: options[:user_id],
            favorite: options[:favorite],
            breeds: options[:breed],
            start_date: options[:start_date],
            end_date: options[:end_date],
            nearby_user_ids: options[:nearby_user_ids]
        }
        conditions = []
        conditions << 'd.name ilike :name_filter' if options[:name]
        conditions << 'd.gender ilike :gender' if options[:gender]
        conditions << 'd.papered = :papered' if options[:papered]
        conditions << 'd.registered = :registered' if options[:registered]
        conditions << 'd.eyes ilike :eyes' if options[:eyes]
        conditions << 'uf.id is not null = :favorite' if options[:favorite]
        conditions << 'b.name in (:breeds)' if options[:breed]
        conditions << 'd.birthdate >= :start_date' if options[:start_date]
        conditions << 'd.birthdate <= :end_date' if options[:end_date]
        conditions << 'd.user_id in (:nearby_user_ids)' if options[:distance]
        query = <<-query
          select
            d.*,
            uf.id is not null as is_favorite
          from dogs d
          left join dog_breeds db on d.id = db.dog_id
          left join breeds b on db.breed_id = b.id
          left join user_favorites uf on d.id = uf.dog_id and uf.user_id = :user_id
          #{'where ' + conditions.join("\n and ") unless conditions.empty?}
          group by d.id, uf.id
        query

        dogs = Dog.find_by_sql([query, query_params])
    end
end