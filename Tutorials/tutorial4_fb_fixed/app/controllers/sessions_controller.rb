class SessionsController < ApplicationController
  def usrdata
    # set the login data
    @email = "hellotesting@123.com"
    @password = "hello123"

    # get input data and check
    if @email == params[:session][:email] && @password == params[:session][:password] 

      @input_email = params[:session][:email]
      @input_password = params[:session][:password]
      redirect_to "/hello"

    else
      redirect_to "/new"
    end

  end

  def logout
    session.clear;
    redirect_to "/login"
  end
  
end
