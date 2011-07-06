# Adds routes for the three controller methods to the parent project
Rails.application.routes.draw do
  namespace :email_manager do
    match "managed_emails", :to => "managed_emails#index", :as => "managed_emails"
    match "managed_email/:id", :to => "managed_emails#show", :as => "managed_email", :method => :get
    match "managed_email/:id/body", :to => "managed_emails#body", :as => "managed_email_body", :method => :get
  end
end
