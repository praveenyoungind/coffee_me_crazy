class ApplicationController < ActionController::Base

  before_filter :authorize

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected


  def current_user
  	User.find(session[:user])
  end	


  def authorize
  	if session[:user]
  		session[:user]
  	else
  		session[:user]=User.create(:cuid=>rand(1000000000).to_s).id
  	end	
  end

  helper_method :current_user
end
