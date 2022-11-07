Rails.application.routes.draw do
  devise_for :users
  scope defaults: { format: :json } do
    root to: "status#index"
    
    namespace :v1 do
      root to: "status#index"
      resources :courses, only: [:index, :show, :create, :update, :destroy]
    end
    
    namespace :v2 do
      root to: "status#index"
      resources :sessions, only: [:create]   
      resources :courses, only: [:index, :show, :create, :update, :destroy]
    end

  end
end

