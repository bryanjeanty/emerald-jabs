class WorkspaceController < ApplicationController

  def index
    @student = Student.all
    @assignment = Assignment.all
  end
  
end
