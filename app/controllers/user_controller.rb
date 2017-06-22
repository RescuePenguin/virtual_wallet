class UserController < ApplicationController
  before_action :protect_from_forgery, prepend: true
  before_action :authenticate_user!

  def check_email
    User.exists?(["lower(email) = ?", email.downcase])
  end
end
