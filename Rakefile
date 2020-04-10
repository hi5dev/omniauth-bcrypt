# frozen_string_literal: true

# Disables Ruby verbose warnings - e.g. an instance variable wasn't initialized.
$VERBOSE = nil

# Bundler reads this environment variable to determine where the project's Gemfile is.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('Gemfile', __dir__)

# Prepares all of the gems listed in Gemfile for activation - mainly by loading the Gem specifications.
require 'bundler/setup'

# Provides Rake tasks for deploying the gem.
require 'bundler/gem_tasks'

# Provides a testing task.
require 'rake/testtask'

# Configure the testing task.
Rake::TestTask.new(:test) do |t|
  # These directories will be added to +$LOAD_PATH+ before the tests run.
  t.libs += %w[lib test]

  # All of these files contain test cases. Use the same files listed in the gemspec.
  t.test_files = Gem::Specification.find_by_name('omniauth-bcrypt').test_files

  # Disable verbose output. This mainly just lists the test files that were loaded.
  t.verbose = false
end

# Run the tests when no task is provided to the Rake CLI.
task default: 'test'
