module EmailManager
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc <<DESC
Description:
  Copies the Email Manager configuration file to the user's initializer directory.
DESC
      
      def copy_config_file
        template "email_manager_config.rb", "config/initializers/email_manager_config.rb"
      end
    end
  end
end
