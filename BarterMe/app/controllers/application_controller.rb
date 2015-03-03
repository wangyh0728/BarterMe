class ApplicationController < ActionController::Base
  include SessionsHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  # protect_from_forgery with: :exception
  before_action :authorize

  protected

  def authorize
    unless logged_in?
      redirect_to login_url, notice: "Please log in"
    end
  end
end
