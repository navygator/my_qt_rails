class UsersController < ApplicationController

  before_filter :not_signed_user, :only => [:index, :show]
  before_filter :correct_user, :only => [:edit]

  def index
  end

  def show
    @user = User.find(params[:id])
    @client = Foursquare2::Client.new(:oauth_token => @user.oauth_token)
  end

  def edit
  end

  def unfriend

  end

  def unfriend_all

  end

  private
  def signed_user
    redirect_to root_path if signed_in?
  end

  def not_signed_user
    redirect_to root_path, notice: "Please sign in" unless signed_in?
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to root_path, error: "You are not allowed" unless (current_user?(@user) || current_user.admin?)
  end
end
