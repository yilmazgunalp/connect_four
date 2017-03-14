# This Rakefile has all the right settings to run the tests inside each lab

require 'rspec/core/rake_task'

task :default => :spec

desc "run tests for this lab"
RSpec::Core::RakeTask.new do |task|
  lab = Rake.application.original_dir
  task.pattern = "#{lab}/spec/*_spec.rb"
  task.rspec_opts = [ "-I#{lab}/spec", "-I#{lab}/spec/solution", '-f documentation', '-r ./rspec_config']
  task.verbose = false
end