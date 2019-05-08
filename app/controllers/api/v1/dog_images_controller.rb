module Api
  module V1
    class DogImagesController < ApplicationController
      def index
        dog_images = DogImage.all
        render json: { data: dog_images }, status: :ok
      end

      def create
        dog_image = dog_image.new(dog_image_params)
        if dog_image.save
          render json: { data: dog_image }, status: :ok
        else
          render json: { data: dog_image.errors }, status: :unprocessable_entity
        end
      end

      private

      def dog_image_params
        params.permit(
          :dog_id,
          :url,
        )
      end
    end
  end
end
