class TasksController < ApplicationController
    before_action :find_taskable

    def new 
        @task = Task.new
    end

    def create
        @task = @taskable.tasks.new task_params

        if @task.save
            redirect_to :back, notice: 'Your task has been added!'
        else
            redirect_to :back, notice: 'Your task has not been added!'
        end
    end

    private

    def task_params
        params.require(:task).permit(:body, :complete)
    end

    def find_taskable
        @taskable = Task.find_by_id(params[:task_id]) if params[:task_id]
        @taskable = Goal.find_by_id(params[:goal_id]) if params[:goal_id]
    end
end