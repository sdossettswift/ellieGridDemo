# Preview all emails at http://localhost:3000/rails/mailers/take_your_meds_mailer
class TakeYourMedsMailerPreview < ActionMailer::Preview
  def meds_mailer_preview
		TakeYourMedsMailer.meds_email(User.first, Pill.first)
	end
end
