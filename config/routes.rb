Rails.application.routes.draw do

  root :to => 'pages#index'

  get 'login', to: 'sessions#new'
  resources :sessions,    only: [:index, :new, :create, :destroy]
  resources :users,       only: [:index, :new, :create, :show]
  resources :restaurants, only: [:index, :show]
  post 'restaurants/search', to: 'restaurants#search'
end
