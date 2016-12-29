namespace :mailer do
  desc "Sends Reminder Email to Users"
  task :reminder => :environment do
    if Pill.where(time: Time.now..Time.now+2.minutes).count > 0

      pills_due = Pill.where(time: Time.now..Time.now+2.minutes)

      pills_due.each do |pill|
        TakeYourMedsMailer.meds_email( pill).deliver_now
      end

    end
  end
end
