require 'rails/generators'
require 'rails/generators/migration'
require 'active_record'
require 'rails/generators/active_record'

module EmailManager
  module Generators
    class UpgradeGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path("../templates/migrations", __FILE__)

      # Implement the required interface for Rails::Generators::Migration.
      def self.next_migration_number(dirname) #:nodoc:
        next_migration_number = current_migration_number(dirname) + 1
        if ActiveRecord::Base.timestamped_migrations
          [Time.now.utc.strftime("%Y%m%d%H%M%S"), "%.14d" % next_migration_number].max
        else
          "%.3d" % next_migration_number
        end
      end

      def copy_templates
        migrations_to_be_applied do |m|
          migration_template "#{m}.rb", "db/migrate/#{m}.rb"
        end
      end

      private

      def migrations_to_be_applied
        ManagedEmail.reset_column_information
        columns = ::ManagedEmail.columns.map(&:name)

        #unless columns.include?( 'name_of_field' )
        #  yield :name_of_migration_file
        #end
      end
    end
  end
end

