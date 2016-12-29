class TakeYourMedsMailer < ApplicationMailer
  default from:  ENV['gmail_username']

  def meds_email(user, pill)
    @user = user
    @pill = pill
    mail(to: @user.email, subject: 'Time for Your Meds!')
  end
end
