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
  #  @assignment = Assignment.new(assignment_params)
  if params[:assignment].nil?
    @assignment = current_user.assignment.create!(params.require(:assignment).permit(:title, :todo))
  #  else
  #   @assignment = current_user.assignment.create!(params.require(:assignment).permit(:title, :content))
   end
   redirect_to assignment_path
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

  private
  def assignment_params
    params.require(:assignment).permit(:title, :todo, :due_date, :image, :file)
  end
end
