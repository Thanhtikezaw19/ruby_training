class LoginController < ApplicationController
  def index
  end

  def login
    @user = UserService.findByEmail(params[:session][:email])
    
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to users_path, notice: "Login Success"
    else
      redirect_to root_path, notice: "Login failed, Try Again!"
    end

  end
  
  def logout
    session.delete(:user_id)
    redirect_to login_path
  end

end
