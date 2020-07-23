Rails.application.routes.draw do
  root to: 'posts#index'
  # resouces :posts only: :show
end
