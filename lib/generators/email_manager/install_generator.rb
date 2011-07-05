# Generates the Managed Email migration and the initializer with the observer
# @author Jeremiah Hemphill
module EmailManager
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path("../templates", __FILE__)

      desc <<DESC
Description:
  Copies the Email Manager configuration file to the user's initializer directory.  Adds a migration for the Managed Email model.
DESC

      # Implement the required interface for Rails::Generators::Migration.
      def self.next_migration_number(dirname) #:nodoc:
        next_migration_number = current_migration_number(dirname) + 1 
        if ActiveRecord::Base.timestamped_migrations
          [Time.now.utc.strftime("%Y%m%d%H%M%S"), "%.14d" % next_migration_number].max
        else
          "%.3d" % next_migration_number
        end 
      end 

      def copy_migration
        migration_template 'migrations/install.rb', 'db/migrate/install_email_manager.rb'
      end 

      def copy_config_file
        template "email_manager_config.rb", "config/initializers/email_manager_config.rb"
      end
    end
  end
end
