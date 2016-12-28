class WelcomeMailer < ApplicationMailer
  default from:  ENV['gmail_username']

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to EllieGrid!')
  end
end
