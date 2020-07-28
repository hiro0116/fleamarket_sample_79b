Rails.application.routes.draw do
  root to: 'posts#show'
  resources :posts, only: :show
  # root to: 'items#create'
  resources :items, only: [:create]
  root to: 'posts#index'

end
