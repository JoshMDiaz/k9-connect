module Api
  module V1
    class EyeColorsController < ApplicationController
      def index
        eye_colors = EyeColor.all
        render json: { data: eye_colors }, status: :ok
      end

      def create
        eye = eye.new(eye_params)
        if eye.save
          render json: { data: eye }, status: :ok
        else
          render json: { data: eye.errors }, status: :unprocessable_entity
        end
      end

      private

      def eye_params
        params.permit(
          :name,
        )
      end
    end
  end
end
