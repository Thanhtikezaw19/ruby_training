class PasswordResetsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      #send email
      PasswordMailer.with(user: @user).reset.deliver_now
    end

    redirect_to root_path, notice: "We have sent the reset password link to this email."

  end

  def edit

    @user = User.find_signed!(params[:token], purpose: "password_reset")
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to root_path, alert: "Your Token has expired! Try again."
    
  end

  def update
    @user = User.find_signed!(params[:token], purpose: "password_reset")
    @pwd = params.require(:user).permit(:password)
    @confirm = params.require(:user).permit(:password_confirmation)

    unless @pwd[:password] == @confirm[:password_confirmation]

      redirect_to password_reset_edit_url(token: params[:token] ), notice: "Password did not match"

    else
      
      if @user.update(password_params)
        redirect_to root_path, notice: "Password reset successfully"
      else
        render :edit
      end
      
    end

  end

  private

  def password_params
    params.require(:user).permit(:password)
  end

end