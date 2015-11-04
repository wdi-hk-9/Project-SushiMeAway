Rails.application.routes.draw do

  get 'comments/create'

  root :to => 'pages#index'

  get 'login', to: 'sessions#new'
  resources :sessions,    only: [:new, :create, :destroy]
  resources :users,       only: [:index, :new, :create, :show]
  resources :restaurants, only: [:index, :show] do
    resources :comments,  only: [:create]
    resources :ratings,   only: [:create]
  end
end
