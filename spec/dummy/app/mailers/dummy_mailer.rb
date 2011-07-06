class DummyMailer < ActionMailer::Base
  default :from => "from@example.com"

  def dummy_email_notification
    mail(:to => "test@email_manager.gem", :subject => "Dummy email notification")
  end
end
