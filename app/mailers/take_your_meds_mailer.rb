class TakeYourMedsMailer < ApplicationMailer
  default from:  ENV['gmail_username']

  def meds_email(current_user, pill)
    @user = current_user
    @pill = pill
    mail(to: @user.email, subject: 'Time for Your Meds!')
  end
end
