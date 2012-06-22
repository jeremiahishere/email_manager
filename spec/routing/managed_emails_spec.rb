require 'spec_helper'

describe EmailManager::ManagedEmailsController do
  describe "routes" do
    it "recognizes and generates root" do
      email_manager_root_path.should == "/email_manager"
    end

    it "recognizes and generates #index" do
      email_manager_managed_emails_path.should == "/email_manager/managed_emails"
    end

    it "recognizes and generates #show" do
      email_manager_managed_email_path(1).should == "/email_manager/managed_emails/1"
    end

    it "recognizes and generates #body" do
      body_email_manager_managed_email_path(1).should == "/email_manager/managed_emails/1/body"
    end
  end
end
