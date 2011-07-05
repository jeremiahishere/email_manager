if Rails.respond_to?(:application)
  puts "hello routes"
  Rails.application.routes.draw do
    match "managed_emails", :to => "managed_emails#index", :as => "email_manager_managed_emails"
    match "managed_email/:id", :to => "managed_emails#show", :as => "email_manager_managed_email", :method => :get
    match "managed_email/:id/body", :to => "managed_emails#body", :as => "email_managed_managed_email_body", :method => :get
  end
else
  ActionController::Routing::Routes.draw do |map|
    map.match "managed_emails", :to => "managed_emails#index", :as => "email_manager_managed_emails"
    map.match "managed_email/:id", :to => "managed_emails#show", :as => "email_manager_managed_email", :method => :get
    map.match "managed_email/:id/body", :to => "managed_emails#body", :as => "email_managed_managed_email_body", :method => :get
  end
end
