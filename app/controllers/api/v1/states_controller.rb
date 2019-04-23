module Api
  module V1
    class StatesController < ApplicationController
      def index
        states = State.all
        render json: { data: states }, status: :ok
      end
    end
  end
end
