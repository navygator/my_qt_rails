module SessionsHelper
  def sign_in(user)
    session[:remember_token] = user.uid
    current_user = user
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    current_user = nil
    session.delete(:remember_token)
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.where(:uid => session[:remember_token]).first
  end

  def current_user?(user)
    user == current_user
  end

end
