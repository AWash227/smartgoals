class TasksController < ApplicationController
    before_action :find_milestone

    def new 
        @task = Task.new
    end

    def create
        @task = @milestone.tasks.new task_params

        if @task.save
            redirect_to @milestone, notice: 'Your task has been added!'
        else
            redirect_to @milestone, notice: 'Your task has not been added!'
        end
    end

    def show
        @task = Task.find(params[:id])
    end

    def edit
        @task = @milestone.tasks.find(params[:id])
    end

    def update
        @task = @milestone.tasks.find(params[:id])
        if @task.update_attributes(task_params)
            redirect_to @milestone
            flash[:success] = "Your task has been updated!"
        else
            redirect_to 'edit'
            flash[:danger] = "Your task has not been updated!"
        end
    end

    def destroy
        @task = @milestone.tasks.find(params[:id])
        @task.delete
        flash[:success] = "Task Deleted!"
        redirect_to @milestone
    end

    private

    def task_params
        params.require(:task).permit(:body, :complete)
    end

    def find_milestone
        @milestone = Milestone.find_by_id(params[:milestone_id]) if params[:milestone_id]
    end
end