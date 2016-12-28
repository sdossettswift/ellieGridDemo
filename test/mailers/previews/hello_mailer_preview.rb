# Preview all emails at http://localhost:3000/rails/mailers/hello_mailer
class HelloMailerPreview < ActionMailer::Preview
	def hello_mailer_preview
		HelloMailer.hello_email(User.first)
	end

end
