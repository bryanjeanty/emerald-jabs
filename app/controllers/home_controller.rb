class HomeController < ApplicationController


  def index
    @assignment = Assignment.all
    @student = Student.all
  end

  def home
    if !logged_in?
      redirect_to login_path
    end
  end

end
