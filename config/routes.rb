Rails.application.routes.draw do
  
  resources :categories
  resources :coments
  resources :posts
  devise_for :users
  resources :users

  root to: 'posts#index'
end
