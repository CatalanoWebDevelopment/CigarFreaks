require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "./lib/CigarFreaksEnvironment.rb"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :console do
    require 'pry'
    Pry.start
end
