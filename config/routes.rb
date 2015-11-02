Rails.application.routes.draw do

  root :to => 'pages#index'
  resources :users, only: [:index, :show, :new, :create]

  get 'login', to: 'sessions#new'
  resources :sessions, only: [:index, :new, :create, :destroy]
end
