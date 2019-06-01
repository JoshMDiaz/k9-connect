Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users
      resources :dogs
      resources :breeds
      resources :eye_colors
      resources :states
      resources :search
    end
  end
end
