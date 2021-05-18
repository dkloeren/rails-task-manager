Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'tasks#index'

  # # read
  # get 'tasks', to: 'tasks#index'
  # get 'tasks/:id', to: 'tasks#show', as: :task

  # # create
  # get 'task/new', to: 'tasks#new', as: :new_task
  # post 'tasks', to: 'tasks#create'
  # # http post request requires a url .. this url, does not have a view, but only an action.
  # # within the action create ... the browser should be rerouted a url with a view

  # # edit
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch 'tasks/:id', to: 'tasks#update'

  # # remove
  # delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task

  resources :tasks #, only: [:create, :index, :destroy]

end
