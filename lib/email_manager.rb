require File.join(%w{email_manager managed_email})
# Add the email manager to the project
module EmailManager
  ActiveRecord::Base.send :include, EmailManager::ManagedEmail
end
