# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "email_manager/version"

Gem::Specification.new do |s| 
  s.name        = 'email_manager'
  s.version     = EmailManager::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Jeremiah Hemphill']
  s.email       = ['jeremiah@cloudspace.com']
  s.homepage    = 'https://github.com/jeremiahishere/email_manager'
  s.summary     = 'An email manager'
  s.description = 'System for storing and managing emails sent by ActionMailer'

  s.rubyforge_project = 'email_manager'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.extra_rdoc_files = ['README.rdoc']
  s.require_paths = ['lib']

  s.licenses = ['MIT']

  s.add_dependency 'rails', ['>= 3.0.0']
  s.add_development_dependency 'bundler', ['~> 1.0.0']
  s.add_development_dependency 'jeweler', ['~> 1.6.3']
  s.add_development_dependency 'rspec', ['~> 2.6.0']
  s.add_development_dependency 'rspec-rails', ['>= 0']
  s.add_development_dependency 'yard', ['~> 0.6.0']
  s.add_development_dependency 'cover_me', ['>= 1.0.0.rc6']
end

