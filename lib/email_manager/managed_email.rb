# Managed Email stores the recorded emails information.
# This includes the subject, body, from, to, reply-to, and calling file
module EmailManager
  class ManagedEmail < ActiveRecord::Base
    require "kaminari"
    require "meta_where"
  end
end
