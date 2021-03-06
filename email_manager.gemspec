# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "email_manager"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeremiah Hemphill"]
  s.date = "2012-06-29"
  s.description = "System for storing and managing emails sent by ActionMailer"
  s.email = "jeremiah@cloudspace.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "CHANGELOG",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/controllers/email_manager/managed_emails_controller.rb",
    "app/models/email_manager/managed_email.rb",
    "app/views/email_manager/managed_emails/_pagination.html.erb",
    "app/views/email_manager/managed_emails/_pagination.html.haml",
    "app/views/email_manager/managed_emails/_search_form.html.erb",
    "app/views/email_manager/managed_emails/_search_form.html.haml",
    "app/views/email_manager/managed_emails/index.html.erb",
    "app/views/email_manager/managed_emails/index.html.haml",
    "app/views/email_manager/managed_emails/show.html.erb",
    "app/views/email_manager/managed_emails/show.html.haml",
    "config/routes.rb",
    "email_manager.gemspec",
    "lib/email_manager.rb",
    "lib/email_manager/engine.rb",
    "lib/email_manager/managed_email_observer.rb",
    "lib/generators/email_manager/install_generator.rb",
    "lib/generators/email_manager/templates/email_manager_config.rb",
    "lib/generators/email_manager/templates/migrations/install.rb",
    "lib/generators/email_manager/upgrade_generator.rb",
    "lib/generators/email_manager/views_generator.rb",
    "log/test.log",
    "spec/controllers/email_manager/managed_emails_controller_spec.rb",
    "spec/dummy/Rakefile",
    "spec/dummy/app/controllers/application_controller.rb",
    "spec/dummy/app/helpers/application_helper.rb",
    "spec/dummy/app/mailers/dummy_mailer.rb",
    "spec/dummy/app/views/dummy_mailer/dummy_email_notification.html.erb",
    "spec/dummy/app/views/layouts/application.html.erb",
    "spec/dummy/config.ru",
    "spec/dummy/config/application.rb",
    "spec/dummy/config/boot.rb",
    "spec/dummy/config/database.yml",
    "spec/dummy/config/environment.rb",
    "spec/dummy/config/environments/development.rb",
    "spec/dummy/config/environments/production.rb",
    "spec/dummy/config/environments/test.rb",
    "spec/dummy/config/initializers/backtrace_silencers.rb",
    "spec/dummy/config/initializers/email_manager_config.rb",
    "spec/dummy/config/initializers/inflections.rb",
    "spec/dummy/config/initializers/mime_types.rb",
    "spec/dummy/config/initializers/secret_token.rb",
    "spec/dummy/config/initializers/session_store.rb",
    "spec/dummy/config/locales/en.yml",
    "spec/dummy/config/routes.rb",
    "spec/dummy/db/migrate/20120629144404_install_email_manager.rb",
    "spec/dummy/db/schema.rb",
    "spec/dummy/public/404.html",
    "spec/dummy/public/422.html",
    "spec/dummy/public/500.html",
    "spec/dummy/public/favicon.ico",
    "spec/dummy/public/javascripts/application.js",
    "spec/dummy/public/javascripts/controls.js",
    "spec/dummy/public/javascripts/dragdrop.js",
    "spec/dummy/public/javascripts/effects.js",
    "spec/dummy/public/javascripts/prototype.js",
    "spec/dummy/public/javascripts/rails.js",
    "spec/dummy/public/stylesheets/.gitkeep",
    "spec/dummy/script/rails",
    "spec/email_manager_spec.rb",
    "spec/managed_email_observer_spec.rb",
    "spec/models/email_manager/managed_email_spec.rb",
    "spec/routing/managed_emails_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "https://github.com/jeremiahishere/email_manager"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "An email manager"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0.0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_development_dependency(%q<capybara>, [">= 0.4.0"])
      s.add_development_dependency(%q<ruby-debug19>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.3"])
      s.add_development_dependency(%q<cover_me>, [">= 1.0.0.rc6"])
      s.add_development_dependency(%q<ci_reporter>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_dependency(%q<capybara>, [">= 0.4.0"])
      s.add_dependency(%q<ruby-debug19>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.3"])
      s.add_dependency(%q<cover_me>, [">= 1.0.0.rc6"])
      s.add_dependency(%q<ci_reporter>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.6.0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<yard>, ["~> 0.6.0"])
    s.add_dependency(%q<capybara>, [">= 0.4.0"])
    s.add_dependency(%q<ruby-debug19>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.3"])
    s.add_dependency(%q<cover_me>, [">= 1.0.0.rc6"])
    s.add_dependency(%q<ci_reporter>, [">= 0"])
  end
end

