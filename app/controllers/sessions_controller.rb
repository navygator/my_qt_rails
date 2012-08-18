class SessionsController < ApplicationController
  def create
    @user = User.from_omniauth(auth_hash)
    sign_in  @user
    redirect_to root_path
  end

  def destroy
    sign_out
  end

  protected
  def auth_hash
    request.env['omniauth.auth']
  end
end
