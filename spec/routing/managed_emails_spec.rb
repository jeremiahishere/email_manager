require 'spec_helper'

describe EmailManager::ManagedEmailsController do
  describe "routes" do
    it "recognizes and generates #index" do
      debugger
      { :get => "/email_manager/managed_emails" }.should route_to(:controller => "email_manager/managed_emails", :action => :index)
    end

    it "recognizes and generates #show" do
      { :get => "/email_manager/managed_email/1" }.should route_to(:controller => "email_manager/managed_emails", :action => :show, :id => 1)
    end

    it "recognizes and generates #body" do
      { :get => "/email_manager/managed_email/1/body" }.should route_to(:controller => "email_manager/managed_emails", :action => :body, :id => 1)
    end
  end
end
