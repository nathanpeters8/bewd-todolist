Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'homepage#index'

  # Add routes below this line

  # Add routes below above line

  # get request endpoint to retrieve all tasks in database
  get 'tasks' => 'tasks#index'

  # post request endpoint to create new task in database
  post 'tasks' => 'tasks#create'

  # delete request endpoint to delete task in database
  delete 'tasks/:id' => 'tasks#destroy'

  # put request endpoint to mark task as completed
  put 'tasks/:id/mark_complete' => 'tasks#mark_complete'

  # put request endpoint to mark task as active
  put 'tasks/:id/mark_active' => 'tasks#mark_active'
end
