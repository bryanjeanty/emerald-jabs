class AssignmentsController < ApplicationController
  def index
    @assignment = Assignment.all
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def new
    @assignment = Assignment.new
  end

  def create
   @assignment = Assignment.new(assignment_params)
   if @assignment.valid?
     @assignment.save
     redirect_to home_index_path
    end
  end

  def edit
    @assignment = Assignment.find(params[:id])
  end

  def update
    @assignment = Assignment.find(params[:id])
    @assignment.update(assignment_params)
    redirect_to home_index_path
  end

  def destroy
  Assignment.destroy(params[:id])
  redirect_to home_index_path
  end

  def assignment_params
    params.require(:assignment).permit(:title, :todo, :due_date)
  end
end
