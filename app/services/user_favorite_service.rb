class UserFavoriteService

    def self.create_user_favorite(params, current_user)
        UserFavorite.transaction do
            user_favorite = UserFavorite.new
            user_favorite.dog_id = params[:dog_id]
            user_favorite.user_id = 7
            user_favorite.save!
            return user_favorite
        end
    end

end