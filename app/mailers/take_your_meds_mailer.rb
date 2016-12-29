class TakeYourMedsMailer < ApplicationMailer
  def meds_email(user, pill)
    @user = user
    @pill = pill
    mail(to: @user.email, subject: 'Time for Your Meds!')
  end
end
