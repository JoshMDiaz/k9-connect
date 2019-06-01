module Api
  module V1
    class SearchController < ApplicationController
      def index
        searchTerm = params[:value].downcase unless params[:value].blank?
        dogs = Dog.joins(:breeds).distinct
        dogs = dogs.where(
          'lower(dogs.name) LIKE ?
          OR lower(dogs.gender) LIKE ?
          OR lower(breeds.name) LIKE ?',
          "%#{searchTerm}%",
          "#{searchTerm}%",
          "%#{searchTerm}%"
          ) unless params[:value].blank?
        render json: { data: dogs }, include: [:breeds, :dog_images], status: :ok
      end
    end
  end
end
