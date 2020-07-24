Rails.application.routes.draw do
  root to: 'items#create'
  resources :items, only: [:create]
end
