class TasksController < ApplicationController
    def index
        # retrieve all tasks and render with jbuilder
        @tasks = Task.all
        render 'tasks/index'
    end
end
