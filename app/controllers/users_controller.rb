class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    client = Foursquare2::Client.new(:oauth_token => @user.oauth_token)
    @f_requests = client.user_requests
  end

  def edit
  end

  def update
  end
end
