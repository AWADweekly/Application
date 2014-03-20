  class ApplicationController < ActionController::Base
    
  protected
    
    def login_required
      return true if User.find_by_id(session[:user_id])
      access_denied
      return false
    end
    def access_denied
           redirect_to :log_in
    end
    
  end