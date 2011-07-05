# Managed Email stores the recorded emails information.
# This includes the subject, body, from, to, reply-to, and calling file
require "kaminari"
require "meta_where"
module EmailManager
  class ManagedEmail < ActiveRecord::Base
  end
end
