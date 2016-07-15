class NotificationMailer < ActionMailer::Base
  default from: "no-reply@foodyapp.com"

  def comment_added
    mail(to: "gmlantay@gmail.com", subject: "A comment has been added to your place")
  end
end
