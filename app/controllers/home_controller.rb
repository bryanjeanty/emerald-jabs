class HomeController < ApplicationController


  def index
    @assignments = Assignment.all
    @posts = Post.all
    @student = Student.all
  end

  def home
    if !logged_in?
      redirect_to login_path
    end
  end

end
