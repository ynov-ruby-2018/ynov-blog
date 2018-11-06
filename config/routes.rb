Rails.application.routes.draw do

  localized do
    devise_for :users

    root to: 'posts#index' 
    resources :currencies, only: :show
    resources :posts

    namespace :admin do
      root to: 'dashboard#index'
      resources :posts
    end
  end

end
