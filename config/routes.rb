Rails.application.routes.draw do
  get 'users/index'

  get 'users/new'

  get 'users/create'

  root to: "users#index"
  resources :users, only: [:index, :show, :new, :create]
end
