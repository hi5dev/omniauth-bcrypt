# frozen_string_literal: true

# The gem's semantic version number.
require_relative 'lib/omniauth/bcrypt/version'

# Creates the specification for the gem. This is used by Bundler to setup and require the gem.
Gem::Specification.new do |spec|
  # The gem's name.
  spec.name = 'omniauth-bcrypt'

  # The gem's version.
  spec.version = OmniAuth::BCrypt::VERSION

  # A short summary of this gem's description.  Displayed in `gem list -d`.
  spec.summary = 'An OmniAuth provider for signing in using a username and password.'

  # A list of authors for this gem. Feel free to add yourself to this list if you contribute. Remember to include
  # your email address, too.
  spec.authors = ['Travis Haynes']

  # A contact email address (or addresses) for this gem.
  spec.email = ['travis@hi5dev.com']

  # The URL of this gem's home page.
  spec.homepage = 'https://github.com/hi5dev/omniauth-bcrypt'

  # This gem uses the MIT license.
  spec.license = 'MIT'

  # This gem requires Ruby 2.3.0 or higher.
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # This gem can only be pushed to rubygems.org.
  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  # The gem's homepage.
  spec.metadata['homepage_uri'] = spec.homepage

  # Where the source for this gem can be found.
  spec.metadata['source_code_uri'] = spec.homepage

  # The gem's changelog.
  spec.metadata['changelog_uri'] = 'https://github.com/hi5dev/omniauth-bcrypt/blob/master/CHANGELOG.md'

  # Which files should be added to the gem when it is released.
  spec.files = %w[
    CHANGELOG.md
    CODE_OF_CONDUCT.md
    Gemfile
    LICENSE.txt
    omniauth-bcrypt.gemspec
    README.md
  ]

  # Include all of the .rb files in the lib directory and any of its subdirectories.
  spec.files += Dir.glob('lib/**/*.rb')

  # These will be loaded as unit tests when the user requests a gem to be unit tested.
  spec.test_files = Dir.glob('test/**/*_test.rb')

  # Paths in the gem to add to +$LOAD_PATH+ when this gem is activated.
  spec.require_paths = ['lib']
end
