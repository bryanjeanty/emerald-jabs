class AssignmentsController < ApplicationController
    def index
        @assignments = Assignment.all
    end

    def new
    end
    
    def create
        @assignment = Assignment.new(assignments_params)
        if @assignment.save
            redirect_to assignments_path
        else
            redirect_to new_assignment_path
        end
    end

    private
    def assignments_params
        params.permit(:title, :image)
    end
end