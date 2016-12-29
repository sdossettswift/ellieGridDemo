class MedsScheduledMailer < ApplicationMailer
  default from:  ENV['gmail_username']

  def scheduled_email(current_user, pill)
    @user = current_user
    @pill = pill
    mail(to: @user.email, subject: 'Updated Meds!')
  end
end
