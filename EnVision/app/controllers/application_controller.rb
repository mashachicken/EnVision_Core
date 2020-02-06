class ApplicationController < ActionController::Base
  def index
    render :index
  end
  def sources
    render :sources
  end
  def users
    if user_signed_in?
      @users = User.all
      render :users
    else
      redirect_to "/"
    end
  end
end
