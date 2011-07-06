require 'spec_helper'

describe EmailManager do
  it "should be valid" do
    EmailManager.should be_a(Module)
  end
end

# things we may want to add
# database cleaner
# cucumber support
#
#
# things to test
# front end
# controller
# views
# routes
# back end
# the observer
# the managed email model (not much to test)
