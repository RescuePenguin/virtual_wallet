class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def ensure_correct_user
    redirect_to root_path and return false unless @user == current_user
  end
end
