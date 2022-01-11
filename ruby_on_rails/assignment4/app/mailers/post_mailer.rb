class PostMailer < ApplicationMailer
  def send_mail
    @logged_in_user = params[:logged_in_user]
    @posts = @logged_in_user.posts
    mail to: @logged_in_user.email
  end
end
