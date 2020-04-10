# frozen_string_literal: true

# Provides a coverage report profile for gems.
SimpleCov.profiles.define('gem') do
  add_filter '/bin/'
  add_filter '/exe/'
  add_filter '/spec/'
  add_filter '/test/'

  add_group 'Library', '/lib/'
end
