require 'spec_helper'

describe EmailManager::ManagedEmailObserver do
  describe "deliver_email" do
    before(:each) do
      DummyMailer.dummy_email_notification
    end

    it "should call self.delivered_email when an email is sent" do
      EmailManager::ManagedEmailObserver.should_receive(:delivered_email)
    end

    it "should find the calling file of the email iff it is in /app" do
      pending
    end

    it "should create a ManagedEmail instance" do
      email = EmailManager::ManagedEmail.last 
      email.to.should == "test@email_manager.gem"
      email.subject.should == "Dummy email notification"
      email.body.should == "This is a dummy email notification.  It should never be sent."
    end
  end 
end
