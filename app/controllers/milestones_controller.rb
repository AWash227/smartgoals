class MilestonesController < ApplicationController
    before_action :find_goal
    def new
        @milestone = Milestone.new
    end


    def create
        @milestone = @goal.milestones.new (milestone_params)

        if @milestone.save
            redirect_to @goal, notice: 'Your milestone has been added!'
        else
            redirect_to @goal, notice: 'Your milestone could not be added.'
        end
    end

    def edit
        @goal = Goal.find(params[:goal_id])
        @milestone = @goal.milestones.find(params[:id])
    end

    def update
        @goal = Goal.find(params[:goal_id])
        @milestone = @goal.milestones.find(params[:id])
        if @milestone.update_attributes(milestone_params)
            redirect_to @goal
            flash[:success] = "You updated your milestone successfully!"
        else
            render 'edit'
        end
    end

    def destroy
        @goal = Goal.find(params[:goal_id])
        @milestone = @goal.milestones.find(params[:id])
        @milestone.delete
        flash[:success] = "Milestone Deleted!"
        redirect_to @goal
    end

    private

    def milestone_params
        params.require(:milestone).permit(:title, :complete, :due_date)
    end

    def find_goal
        @goal = Goal.find_by_id(params[:goal_id]) if params[:goal_id]
    end

end