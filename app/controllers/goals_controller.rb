class GoalsController < ApplicationController
    def index
        @goals = Goal.all
    end
    def new
        @goal = Goal.new
    end

    def create
        @goal = Goal.new(goal_params)
        if @goal.save
            redirect_to @goal
        else
            render 'new'
        end
    end

    def edit
        @goal = Goal.find(params[:id])
    end

    def update
        @goal = Goal.find(params[:id])
        if @goal.update_attributes(goal_params)
            redirect_to @goal
        else
            render 'edit'
        end
    end

    def show
        @goal = Goal.find(params[:id])
        @milestones = @goal.milestones
    end


    private

        def goal_params
            params.require(:goal).permit(:title, :daily_action, :due_date)
        end
end