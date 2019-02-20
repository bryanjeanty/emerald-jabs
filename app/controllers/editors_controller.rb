class EditorsController < ApplicationController
    def update
        @assignment = Assignment.find(params[:assignment_id])
        unless @assignment.editors.length == 0
            @assignment.editors.destroy_all
        end
        @assignment.editors.create(
            assignment_id: params[:assignment_id],
            session: params[:editor][:session]
            )
        puts params[:session]
        redirect_to user_assignment_path(@assignment.user, @assignment)
    end

    def destroy
        @assignment = Assignment.find(params[:assignment_id])
        @editor = @assignment.editor
        @editor.destroy
        redirect_to user_assignment_path(@assignment.user, @assignment)
    end
end
