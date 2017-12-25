begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end

task default: %w[test]

task :test do
  Rake::Task["spec"].execute
end
