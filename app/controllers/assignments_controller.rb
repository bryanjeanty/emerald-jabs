class AssignmentsController < ApplicationController
  def index
    @assignment = Assignment.all
    @user = User.all
  end

  def show
    @user = User.find(params[:user_id])
    @assignment = @user.assignments.find(params[:id])
    @editor = @assignment.editors.new
    
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text params[:contents]
        send_data(pdf.render, filename: "#{ @assignment.title }-workspace-session.pdf", type: "application/pdf")
      end
    end
  end

  def new
    @assignment = Assignment.new
  end

  def create
    if params[:assignment][:image].nil? && params[:assignment][:file].nil?
      @assignment = current_user.assignments.create!(params.require(:assignment).permit(:title, :due_date, :todo))
    elsif params[:assignment][:image].nil?
      @assignment = current_user.assignments.create!(params.require(:assignment).permit(:title, :due_date, :todo))
      @assignment.file.attach(params[:assignment][:file])
    elsif params[:assignment][:file].nil?
      @assignment = current_user.assignments.create!(params.require(:assignment).permit(:title, :due_date, :todo))
      @assignment.image.attach(params[:assignment][:image])
    else
      @assignment = current_user.assignments.create!(params.require(:assignment).permit(:title, :due_date, :todo))
      @assignment.image.attach(params[:assignment][:image])
      @assignment.file.attach(params[:assignment][:file])
    end
    redirect_to assignments_path
  end

  def edit
    @assignment = Assignment.find(params[:id])
  end

  def update
    @assignment = Assignment.find(params[:id])
    @assignment.update(params.require(:assignment).permit(:title, :due_date, :todo))
    redirect_to user_assignment_path(@assignment.user, @assignment)
  end

  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
    redirect_to assignments_path
  end
end
