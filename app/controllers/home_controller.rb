class HomeController < ApplicationController


  def index
    @assignments = Assignment.all
    @posts = Post.all.with_attached_image
    @student = Student.all
  end

  def home
    if !logged_in?
      redirect_to login_path
    end
  end

end
