module Api
  module V1
    class DogsController < ApplicationController
      def index
        query = <<-query
          select
          d.*,
          case when uf.id is not null then true else false end as is_favorite
          from dogs d
          left join user_favorites uf on uf.dog_id = d.id and uf.user_id = :user_id
        query

        dogs = Dog.find_by_sql([query, { user_id: @current_user.id }])
        dogs = dogs.where('lower(name) LIKE ?', "%#{params[:name].downcase}%") unless params[:name].blank?
        dogs = dogs.where(birthdate: birthdate_range) unless params[:start_date].blank?
        render json: { data: dogs }, include: [:dog_images, :breeds], status: :ok
      end

      def show
        query = <<-query
          select
          d.*,
          case when uf.id is not null then true else false end as is_favorite
          from dogs d
          left join user_favorites uf on uf.dog_id = d.id and uf.user_id = :user_id
          where d.id = :dog_id
        query

        dog = Dog.find_by_sql([query, { user_id: @current_user.id, dog_id: params[:id] }])
        render json: { data: dog[0] }, include: [:dog_images, :breeds], status: :ok
      end

      def destroy
        dog = Dog.find(params[:id])
        dog.destroy
        render json: { data: dog }, status: :ok
      end

      def create
        dog = DogService.create_dog(dog_params, @current_user)
        begin
          render json: { data: dog }, status: :ok
        rescue
          render json: { data: dog.errors }, status: :unprocessable_entity
        end
      end

      def update
        dog = DogService.update_dog(dog_params, @current_user)
        if dog.update_attributes(dog_params)
          render json: { data: dog }, status: :ok
        else
          render json: { data: dog.errors }, status: :unprocessable_entity
        end
      end

      private

      def dog_params
        params.permit(
          dog: [
            :name,
            :gender,
            :papered,
            :registered,
            :description,
            :birthdate,
            :eyes,
            :dog_id
          ],
          breeds: [],
          dog_images: []
        )
      end

      def dog_filters
        params.permit(
          :gender,
          :papered,
          :registered,
          :birthdate,
          breeds: [],
          eyes: []
        )
      end

      def birthdate_range
        Date.parse(params[:start_date])..Date.parse(params[:end_date]) unless params[:start_date].blank?
      end
    end
  end
end
