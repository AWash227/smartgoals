class MilestonesController < ApplicationController
    before_action :find_goal
    def new
        @milestone = Milestone.new
    end

    def create
        @milestone = @goal.milestones.new milestone_params

        if @milestone.save
            redirect_to @goal, notice: 'Your milestone has been added!'
        else
            redirect_to @goal, notice: 'Your milestone was not added!'
        end
    end

    private

    def milestone_params
        params.require(:milestone).permit(:title, :complete, :due_date)
    end

    def find_goal
        @goal = Goal.find_by_id(params[:goal_id]) if params[:goal_id]
    end

end