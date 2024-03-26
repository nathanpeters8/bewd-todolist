Rails.application.routes.draw do
  root 'homepage#index'

  # Add routes below this line

  # Add routes below above line

  # get request endpoint to retrieve all tasks in database
  get 'tasks' => 'tasks#index'

  # post request endpoint to create new task in database
  post 'tasks' => 'tasks#create'
end
