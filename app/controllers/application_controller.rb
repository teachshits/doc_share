class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user

  private
    def authenticate_user
      @current_user = User.authenticate(params[:user][:login], params[:user][:password])
    end
end
