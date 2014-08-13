class SessionsController < ApplicationController

  def login
  end

  def create   
    @userLoc = User.find_by_user_id(params[:user_id])
    if @userLoc && @userLoc.authenticate(params[:password])
      session[:user_id] = @userLoc.id      
      render("userhome")
    else      
      render "login"
    end
  end

  def home
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path   
  end

  def connect
    @user = OauthUser.test(env["omniauth.auth"])
    render("home")
  end
end
