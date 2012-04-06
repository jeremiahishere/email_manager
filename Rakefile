# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'

Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "email_manager"
  #gem.homepage = "http://github.com/jeremiahishere/email_manager"
  gem.license = "MIT"
  gem.summary = %Q{An email manager}
  gem.description = %Q{System for storing and managing emails sent by ActionMailer}
  gem.email = "jeremiah@cloudspace.com"
  gem.authors = ["Jeremiah Hemphill"]
  gem.homepage = 'https://github.com/jeremiahishere/email_manager'
  gem.source = 'https://github.com/jeremiahishere/email_manager'
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'EmailManager'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
# end rspec tests

require 'yard'
YARD::Rake::YardocTask.new


# hudson ci
require 'ci/reporter/rake/rspec'
namespace :hudson do
  def report_path
    "spec/reports/"
  end 

  task :report_setup do
    rm_rf report_path
    mkdir_p report_path
  end 
end
