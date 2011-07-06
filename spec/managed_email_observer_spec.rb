require 'spec_helper'

describe EmailManager::ManagedEmailObserver do
  describe "deliver_email" do
    before(:each) do
      DummyMailer.dummy_email_notification
    end

    it "should call self.delivered_email when an email is sent" do
      pending
    end

    it "should find the calling file of the email iff it is in /app" do
      pending
    end

    it "should create a ManagedEmail instance" do
      pending
    end
  end 
end
