Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users
      resources :dogs
      resources :breeds
      resources :eye_colors
      resources :states
      resources :search
      resources :user_favorites, only: [:index, :show, :create] do
        delete "remove_favorite", on: :collection, to: "user_favorites#remove_favorite"
      end
    end
  end
end
