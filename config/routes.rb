Rails.application.routes.draw do
  root to: 'tasks#index'

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  put 'tasks', to: 'tasks#update'
  delete 'tasks', to: 'users#edit'
  delete 'logout', to: 'sessions#destroy'
  
  
  resources :users, only: [:index, :show, :new, :create, :destroy]
  resources :tasks
end
