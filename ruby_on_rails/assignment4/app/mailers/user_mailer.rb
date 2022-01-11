class UserMailer < ApplicationMailer
  def send_mail
    @new_user = params[:user]
    @logged_in_user = params[:logged_in_user]
    mail to: @logged_in_user.email
  end
end
