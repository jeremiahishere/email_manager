# Add the email manager to the project
# now accessible as EmailManager::ManagedEmail
# should now be handled by the engine
# require File.join(%w{email_manager managed_email})
# make the observer accessible as EmailManager::ManagedEmailObserver
require File.join(%w{email_manager managed_email_observer})

require "email_manager/engine"
