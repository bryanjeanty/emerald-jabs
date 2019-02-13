class HomeController < ApplicationController


  def index
    
  end

  def home
    if !logged_in?
      redirect_to login_path
    end
  end

end
