module Api
  module V1
    class EyeColorsController < ApplicationController
      def index
        eye_colors = EyeColor.all
        render json: { data: eye_colors }, status: :ok
      end
    end
  end
end
