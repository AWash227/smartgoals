class MilestonesController < ApplicationController
    before_action :find_goal
    def new
        @milestone = @goal.milestones.new 
    end

    def show
        @milestone = Milestone.find(params[:id])
    end


    def create
        @milestone = @goal.milestones.create (milestone_params)

        if @milestone.save
            redirect_to @goal, notice: 'Your milestone has been added!'
        else
            redirect_to @goal, notice: 'Your milestone could not be added.'
        end
    end

    def edit
        @milestone = @goal.milestones.find(params[:id])
    end

    def update
        @milestone = @goal.milestones.find(params[:id])
        if @milestone.update_attributes(milestone_params)
            redirect_to @goal
            flash[:success] = "You updated your milestone successfully!"
        else
            render 'edit'
        end
    end

    def destroy
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