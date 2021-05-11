Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#tasks', as: :tasks
  get    "tasks/new",      to: "tasks#new",  as: :new_task
  post   "tasks",          to: "tasks#create", as: :create_task
  get 'tasks/:id', to: 'tasks#show', as: :task_show
  delete "tasks/:id",      to: "tasks#destroy", as: :task_destroy
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update", as: :update_task
end
