class AuthenticationController < ApplicationController
  def sign_in
    @user = User.new
  end

def new_user
  @user = User.new
end

def register
  @user = User.new(params[:user])

  #if @user.valid?
   # @user.save
    #session[:user_id] = @user.id
    #flash[:notice] = 'Welcome.'
    #redirect_to :root
  #else
   # render :action => "new_user"
  #end
end
  #this stuff is instead of attr_accessible, might work but im not sure if i've written the
  #params in the right place. seems to work so far but no idea
private
def user_params
        params.require(:user).permit(:username, :password)
  #code
end
  def login
    username_or_email = params[:user][:username]
    password = params[:user][:password]

    if username_or_email.rindex('@')
      email=username_or_email
      user = User.authenticate_by_email(email, password)
    else
      username=username_or_email
      user = User.authenticate_by_username(username, password)
    end

    if user
      redirect_to :root
    else
      render :action => "sign_in"
    end
  def signed_out
    session[:user_id] = nil
    flash[:notice] = "You have been signed out."
  end
  end
end