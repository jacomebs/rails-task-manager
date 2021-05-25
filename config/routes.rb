Rails.application.routes.draw do
  # HOMEPAGE
  root to: 'tasks#index'
  # SAME AS: get '/', to: 'tasks#index'
  # CRUD
  # RESTFUL resource
  resources :tasks
  # resources :restaurants, only: [:show, :index]
  # # READ ALL
  # get 'tasks', to: 'tasks#index'
  # # CREATE ONE
  # get 'tasks/new', to: 'tasks#new'
  # post 'tasks', to: 'tasks#create'
  # # READ ONE
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # # UPDATE
  # get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch '/tasks/:id', to: 'tasks#update'
  # # DELETE
  # delete 'tasks/:id', to: 'tasks#destroy'
end
