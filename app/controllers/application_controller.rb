class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  helper_method :current_user
  #if @user
   # session[:user_id]= user.id
  #flash[:notice] = 'Welcome.'
  #redirect_to :root
#else
  #flash.now[:error] = 'Unknown user. Please check your username and password.'
  #render :action => "sign_in"
#end
   def current_user
    # using find_by_id because this allows the function to return a nil value.
    # If we used User.find, it wouldn't work if the user can't be found.
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end
   def signed_out
  session[:user_id] = nil
  flash[:notice] = "You have been signed out."
end

end