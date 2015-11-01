Rails.application.routes.draw do
  resources :restaurants do
    resources :categories
  end
  root :to => 'index'
end

