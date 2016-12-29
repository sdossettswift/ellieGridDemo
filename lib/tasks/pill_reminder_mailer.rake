namespace :mailer do
  desc "Sends Reminder Email to Users"
  task :reminder => :environment do
    if Pill.where(time: Time.now..Time.now+1.minute).count > 0

      pills_due = Pill.where(time: Time.now..Time.now+1.minute)

      pills_due.each do |pill|
        TakeYourMedsMailer.meds_email( pill).deliver_now
      end

    end
  end
end
