Rails.application.routes.draw do
  root to: 'users#index'
  resources :posts, only: :show
  # root to: 'items#create'
  resources :items, only: [:create]
end
