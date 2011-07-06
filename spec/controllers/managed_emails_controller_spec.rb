require 'spec_helper'

describe EmailManager::ManagedEmailsController do
  describe "index" do
    before(:each) do
      @managed_email = mock_model(EmailManager::ManagedEmail)
      EmailManager::ManagedEmail.stub!(:search).and_return([@managed_email])
    end

    it "should be successful" do
      get :index
      response.should be_success
    end

    it "should render the index template" do
      get :index
      response.should render_template('index')
    end

    it "should assign the managed emails to the view" do
      get :index
      assigns[:managed_emails].should == [@managed_email]
    end

    it "should attempt to use meta_search" do
      EmailManager::ManagedEmail.should_receive(:search).and_return([@managed_email])
      EmailManager::ManagedEmail.should_receive(:respond_to?).with(:search).and_return(true)
      get :index
      assigns[:search_enabled].should be_true
    end

    it "if meta_search isn't installed, it should return all results" do
      EmailManager::ManagedEmail.should_receive(:all).and_return([@managed_email])
      EmailManager::ManagedEmail.should_receive(:respond_to?).with(:search).and_return(false)
      get :index
      assigns[:search_enabled].should_not be_true
    end


    it "should attempt to use kaminari" do
      pending
    end
   
    it "should not paginate if kaminari is not installed" do
      pending
    end
  end

  describe "show" do
    before(:each) do
      @managed_email = mock_model(EmailManager::ManagedEmail)
      EmailManager::ManagedEmail.stub!(:find_by_id).with(1).and_return(@managed_email)
    end
    
    def do_show
      get :show, :method => :get, :id => 1
    end

    it "should be successful" do
      do_show
      response.should be_success
    end

    it "should render the show template" do
      do_show
      response.should render_template('show')
    end

    it "should assign the managed email to the view" do
      do_show
      assigns[:managed_email].should == @managed_email
    end
  end

  describe "body" do
    before(:each) do

    end

    it "should be successful" do
      pending
    end

    it "should render as text" do
      pending
    end

    it "should render the body of the managed email" do
      pending
    end
  end
end
