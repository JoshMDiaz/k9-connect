module Api
  module V1
    class BreedsController < ApplicationController
      def index
        breeds = Breed.all
        render json: { data: breeds }, status: :ok
      end

      def create
        breed = breed.new(breed_params)
        if breed.save
          render json: { data: breed }, status: :ok
        else
          render json: { data: breed.errors }, status: :unprocessable_entity
        end
      end

      private

      def breed_params
        params.permit(
          :name,
        )
      end
    end
  end
end
