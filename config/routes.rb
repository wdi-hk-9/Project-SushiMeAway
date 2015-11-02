Rails.application.routes.draw do
  get 'sessions/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root :to => 'pages#index'
  resources :users, only: [:index, :show, :new, :create]

  get 'login', to: 'sessions#new'
  resources :sessions, only: [:index, :new, :create, :destroy]
end
