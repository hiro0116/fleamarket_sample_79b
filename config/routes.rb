Rails.application.routes.draw do

  resources :posts, only: :show
  root to: 'items#create'
  resources :items, only: [:create]

end
