Rails.application.routes.draw do
  root to: 'users#index'
  resources :posts, only: :show
  resources :items, only: [:create]
  resources :users, only: :index
end
