module Api
  module V1
    class BreedsController < ApplicationController
      def index
        breeds = Breed.all
        render json: { data: breeds }, status: :ok
      end
    end
  end
end
