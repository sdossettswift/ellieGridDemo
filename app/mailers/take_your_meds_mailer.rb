class TakeYourMedsMailer < ApplicationMailer
  default from:  ENV['gmail_username']

  def meds_email(pill)
    @user = pill.box.user
    @pill = pill
    mail(to: @user.email, subject: 'Time for Your Meds!')
  end
end
