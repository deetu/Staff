class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to sessions_my_account_path
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end
  
  def logout
    
  session[:user_id] = nil
  
  redirect_to pages_home_path , :notice => "Logged out!"
  end
  
  def my_account

      if session[:user_id] != nil

      	@sessName = User.find(session[:user_id]).name

      else

      	@sessName = "Guest"

      end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to page_home_url, notice: "Logged out"
  end
end
