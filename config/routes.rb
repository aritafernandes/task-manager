Rails.application.routes.draw do
  #get 'tasks/index'
  #devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'tasks#index'
  resources :tasks, only: %i[index show new create]
  devise_for :users
end
