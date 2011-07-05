# Add the email manager to the project
# now accessible as EmailManager::ManagedEmail
require File.join(%w{email_manager managed_email})
# make the observer accessible as EmailManager::ManagedEmailObserver
require File.join(%w{email_manager email_observer})
