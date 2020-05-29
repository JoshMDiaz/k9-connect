module Api
  module V1
    class DogImagesController < ApplicationController
      before_action :set_dog, only: [:index, :create]
      before_action :set_dog_image, except: [:index, :create]

      def index
        @dog_images = @dog.dog_images.all
        render json: { data: @dog_images }, status: :ok
      end

      def create
        begin
          if dog_image_params["dog_images"].present?
            dog_image_params["dog_images"].each do |dog_image_param|
              @dog_image = @dog.dog_images.create(dog_image_param)
            end
          end
          render json: { data: @dog }, status: :ok
        rescue
          render json: { data: @dog_image.errors }, status: :unprocessable_entity
        end
      end

      def show
        render json: { data: @dog_image }, status: :ok
      end

      def update
        if @dog_image.update(dog_image_params)
          render json: { data: @dog_image }, status: :ok
        else
          render json: { data: @dog_image.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        @dog_image.destroy
        head :no_content
      end

      private

      def set_dog
        @dog = Dog.find(params[:dog_id])
      end

      def set_dog_image
        @dog_image = DogImage.find(params[:id])
      end

      def dog_image_params
        params.permit(:dog_id, dog_images: [ :url, :main_image ])
      end

    end
  end
end
