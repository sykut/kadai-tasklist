Rails.application.routes.draw do
  root to: 'tasks#index'

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  put 'tasks', to: 'tasks#update'
  get 'tasks', to: 'tasks#edit'
  delete 'tasks', to: 'tasks#destroy'
  delete 'logout', to: 'sessions#destroy'
  
  
  resources :users, only: [:index, :show, :new, :create,]
  resources :tasks
end
