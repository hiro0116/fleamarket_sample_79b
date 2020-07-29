Rails.application.routes.draw do
  root to: 'users#index'
  resources :posts, only: :show
  # root to: 'items#create'
  resources :items, only: [:create]
  # root to: 'posts#index'
  resources :users, only: :index
end
