Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'tasks', to: 'tasks#index'
  # root "articles#index"
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create', as: :task_create
  get 'tasks/:id', to: 'tasks#show', as: :task

  get 'tasks', to: 'tasks#show'
  get 'tasks/:id/edit', to: 'tasks#edit',as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'


end
