module Api
  module V1
    class DogsController < ApplicationController
      def index
        dogs = Dog.where(dog_filters)
        dogs = dogs.where(birthdate: birthdate_range) unless  params[:start_date].blank?
        render json: { data: dogs }, status: :ok
      end

      def show
        dog = Dog.find(params[:id])
        render json: { data: dog }, status: :ok
      end

      def destroy
        dog = Dog.find(params[:id])
        dog.destroy
        render json: { data: dog }, status: :ok
      end

      def create
        dog = Dog.new(dog_params)
        if dog.save
          render json: { data: dog }, status: :ok
        else
          render json: { data: dog.errors }, status: :unprocessable_entity
        end
      end

      def update
        dog = Dog.find(params[:id])
        if dog.update_attributes(dog_params)
          render json: { data: dog }, status: :ok
        else
          render json: { data: dog.errors }, status: :unprocessable_entity
        end
      end

      private

      def dog_params
        params.permit(
          :name,
          :gender,
          :breed,
          :papered,
          :registered,
          :description,
          :birthdate,
          :eyes
        )
      end

      def dog_filters
        params.permit(
          :name,
          :gender,
          :papered,
          :registered,
          :birthdate,
          breed: [],
          eyes: []
        )
      end

      def birthdate_range
        Date.parse(params[:start_date])..Date.parse(params[:end_date]) unless params[:start_date].blank?
      end
    end
  end
end
