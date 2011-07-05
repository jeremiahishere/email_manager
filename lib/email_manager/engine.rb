require "rails"
require "email_manager"

module EmailManager
  class Engine << Rails::Engine
    engine_name :email_manager
  end
end
