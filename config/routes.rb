Rails.application.routes.draw do
  root to: 'posts#index'

  devise_for :users

  resources :users, only: %i[show update edit]

  resources :posts do
    resources :coments, except: %i[index edit]
  end
  resources :categories do
    resources :coments, except: %i[index edit]
  end
end
