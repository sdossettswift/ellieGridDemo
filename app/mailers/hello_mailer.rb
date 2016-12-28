class HelloMailer < ApplicationMailer
	 default from:  ENV['gmail_username']

	 def hello_email(user)
	 	@user= user
	 	mail(to: @user.email, subject: "Welcome to Ellie Grid")
	 end
	 
end
