class TasksController < ApplicationController
    def index
        # retrieve all tasks and render with jbuilder
        @tasks = Task.all
        render 'tasks/index'
    end

    def create  
        # create new task object
        @task = Task.new(task_params)

        # render jbuilder file if task is saved successfully
        if @task.save
            render 'tasks/create'
        end
    end

    def destroy
        # find task by id
        @task = Task.find_by(id: params[:id])

        # delete task and render json response
        if @task and @task.destroy
            render json: { success: true }
        else
            render json: { success: false }
        end
    end

    private

    # specifies request params need to have task object that contains key 'content'
    def task_params
        params.require(:task).permit(:content)
    end
end
