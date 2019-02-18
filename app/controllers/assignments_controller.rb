class AssignmentsController < ApplicationController
  def index
    @assignment = Assignment.all
    @user = User.all
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def new
    @assignment = Assignment.new
  end

  def create

    if params[:assignment][:image].nil? && params[:assignment][:file].nil?
      @assignment = current_user.assignments.create!(params.require(:assignment).permit(:title, :due_date, :todo))
    elsif params[:assignment][:image].nil?
      @assignment = current_user.assignments.create!(params.require(:assignment).permit(:title, :due_date, :todo))
      # if params[:assignment][:file].content_type == "application/pdf"
        @assignment.file.attach(params[:assignment][:file])
      # else
        # flash[:file_error] = "You Can Only Upload A PDF Document";
      # end
    else params[:assignment][:file].nil?
      @assignment = current_user.assignments.create!(params.require(:assignment).permit(:title, :due_date, :todo))
      @assignment.image.attach(params[:assignment][:image])
    end
    redirect_to assignments_path
  end

  def edit
    @assignment = Assignment.find(params[:id])
  end

  def update
    @assignment = Assignment.find(params[:id])
    @assignment.update(assignment_params)
    redirect_to assignments_path
  end

  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
    redirect_to root_path
  end
end
