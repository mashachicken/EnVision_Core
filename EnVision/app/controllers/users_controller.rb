class UsersController < ApplicationController
  before_action :authenticate_user!
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You've successfully signed up!"
      session[:user_id] = @user.id
      redirect_to users_path(@user)
    else
      flash[:alert] = "There was a problem signing up."
      redirect_to '/signup'
    end
  end

  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find(current_user.id)
    @users = User.all
    render :user
  end

  def result
    @user = User.find(current_user.id)
    @user.footprint = params[:total]
    @user.save
    flash[:result] = "Results Saved!"
    redirect_to '/'
  end

  def add_pic
    @user = User.find(current_user.id)
    @user.pic = params[:pic]
    @user.save
    render :user
  end

  def add_quote
    @user = User.find(current_user.id)
    @user.quote = params[:quote]
    @user.save
    render :user
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password, :username, :footprint, :pic, :quote)
  end
end
