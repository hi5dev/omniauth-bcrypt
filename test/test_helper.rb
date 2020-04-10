# frozen_string_literal: true

# Add the full path to the project's lib directory to the Ruby load path.
$LOAD_PATH << File.expand_path('../lib', __dir__)

# Provides code coverage reports.
require 'simplecov'

# A code coverage profile for working with gems.
require_relative 'simplecov_gem_profile'

# Start the coverage report.
SimpleCov.start('gem')

# OmniAuth::BCrypt gem.
require 'omniauth/bcrypt'

# Minitest framework.
require 'minitest/autorun'

# Provides IDE compatible test reporters, and a progress bar for the CLI.
require 'minitest/reporters'

# Enable the IDE compatible test reporters.
MiniTest::Reporters.use!
