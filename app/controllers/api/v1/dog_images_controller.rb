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
        @dog_image = @dog.dog_images.new(dog_image_params)
        if @dog_image.save
          render json: { data: @dog_image }, status: :ok
        else
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
        params.permit(
          :dog_id,
          :url,
          :main_image
        )
      end
    end
  end
end
