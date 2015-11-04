Rails.application.routes.draw do

  get 'comments/create'

  root :to => 'pages#index'

  get 'login', to: 'sessions#new'
  resources :sessions,    only: [:new, :create, :destroy]
  resources :users,       only: [:index, :new, :create, :show]
  resources :restaurants, only: [:index, :show] do
    resources :comments,  only: [:create]
  end

  post 'restaurants/search', to: 'restaurants#search'
  # post 'restaurants/:id', to: 'comments#create'
end
