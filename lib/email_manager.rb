require File.join(%w{email_manager managed_email})
# Add the email manager to the project
module EmailManager
end
ActiveRecord::Base.send :include, EmailManager::ManagedEmail
