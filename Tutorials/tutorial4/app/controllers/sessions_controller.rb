class SessionsController < ApplicationController
    def new
        
    end

    def usrdata
        #set the login data
        @email = "hellotesting@123.com"
        @password = "hello123"

        @input_email = params[:session][:email]
        @input_password = params[:session][:password]
        logger.info(@input_email)
        logger.info(@input_password)

        if @email == @input_email && @password == @input_password 
            redirect_to "/hello"
        else
                redirect_to "/new"
        end
    end

    
        
        # if user input is right
        # if params.has_key?() && params.has_key?(:password)

        #     if @email == @input_email && @password == @input_password

        #         redirect_to "/hello"
        #     else

        #         redirect_to "/new"

        #     end

        # end
        # # if the inputs are wrong
        # unless params.has_key?(:email) && params.has_key?(:password)
        #     redirect_to "/new"
        # end
  
    


    def logout
        session.clear;
        redirect_to "/login"
    end
end
