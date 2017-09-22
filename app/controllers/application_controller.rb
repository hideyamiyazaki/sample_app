class ApplicationController < ActionController::Base
  def store_location
    session[:return_to] = request.url
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
end
