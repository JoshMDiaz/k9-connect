class DogService

    def self.create_dog(params)
        Dog.transaction do
            dog = Dog.new
            dog.assign_attributes(params[:dog].to_h)
            dog.user_id = 1
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

    def self.update_dog(params)
        puts params
        Dog.transaction do
            dog = Dog.find(params[:id])
            dog.assign_attributes(params[:dog].to_h)
            dog.user_id = 1
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

end