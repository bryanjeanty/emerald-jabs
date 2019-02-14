class AssignmentsController < ApplicationController
    def index
        @assignments = Assignment.all
    end

    def new
        @assignment = Assignment.new
    end
    
    def create
        @assignment = Assignment.new(assignments_params)
        if @assignment.save
            redirect_to assignments_path
        else
            redirect_to new_assignment_path
        end
    end

    def show
        @assignment = Assignment.find(params[:id])
    end

    def destroy
        @assignment = Assignment.find(params[:id])
        @assignment.destroy
        redirect_to root_path
    end

    private
    def assignments_params
        params.require(:assignment).permit(:title, :image)
    end
end