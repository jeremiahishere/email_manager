# make the observer accessible as EmailManager::ManagedEmailObserver
require File.join(%w{email_manager managed_email_observer})

# start the engine
# makes the managed emails model/view/controller/routes visible
require "email_manager/engine"
