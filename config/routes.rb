Rails.application.routes.draw do
  devise_for :users
  scope defaults: { format: :json } do
    root to: "status#index"
    resources :courses, only: [:index, :show, :create, :update, :destroy]
    resources :sessions, only: [:create]
  end
end

