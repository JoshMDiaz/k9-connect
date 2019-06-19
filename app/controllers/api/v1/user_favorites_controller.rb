module Api
  module V1
    class UserFavoritesController < ApplicationController
      def index
        user_favorites = UserFavorite.all
        render json: { data: user_favorites }, status: :ok
      end

      def show
        user_favorite = UserFavorite.find(params[:id])
        render json: { data: user_favorite }, status: :ok
      end

      def remove_favorite
        user_favorite = UserFavorite.where("dog_id = ? AND user_id = ?", params[:dog_id], @current_user.id)
        user_favorite.delete_all
        render json: { data: true }, status: :ok
      end

      def create
        user_favorite = UserFavorite.new
        user_favorite.dog_id = params[:dog_id]
        user_favorite.user_id = @current_user.id
        if user_favorite.save
          render json: { data: user_favorite }, status: :ok
        else
          render json: { data: user_favorite.errors }, status: :unprocessable_entity
        end
      end

      private
      def user_favorite_params
        params.permit(
          :dog_id
        )
      end
    end
  end
end
