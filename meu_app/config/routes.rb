Rails.application.routes.draw do
  devise_for :admins

 
  resources :comments

  
  resources :posts do
    resources :comments, only: [:index, :new, :create, :show]
  end

  get "up" => "rails/health#show", as: :rails_health_check

  root "posts#index"
end
