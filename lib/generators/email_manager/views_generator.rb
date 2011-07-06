# Generate the controller and views into the parent project
# @author Jeremiah Hemphill
module EmailManager
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../app", __FILE__)

      class_option :template_engine, :type => :string, :aliases => '-e', :desc => 'Template engine for the views. Available options are "erb" and "haml" with a default value of "erb".'

      desc <<DESC
Description:
  Copies the controller and views into the rails project so they can be overriden.
DESC

      # Stolen from Kaminari gem
      # @returns [String] either 'haml' or 'erb' based on the user input (which is set to template_engine)
      def template_engine
        options[:template_engine].try(:to_s).try(:downcase) || 'erb'
      end

      # Adds the views to the parent project
      def copy_views
        #theoretical support in the future for haml
        extension = "." + template_engine
        files = %w{_pagination _search_form index show}
        files.each do |file|
          source = "views/email_manager/managed_emails/" + file + ".html" + extension
          destination = "app/views/email_manager/managed_emails/" + file + ".html" + extension
          template source, destination
        end
      end

      # Addes the controller to the parent project
      def copy_controller
        template "controllers/email_manager/managed_emails_controller.rb", "app/controllers/email_manager/managed_emails_controller.rb"
      end
    end
  end
end
