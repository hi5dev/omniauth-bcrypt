# frozen_string_literal: true

require 'test_helper'

module OmniAuth
  module BCrypt
    # @since 0.1.0
    class VersionTest < Minitest::Test
      # The officially suggested regular expression for matching semantic version numbers.
      #
      # @since 0.1.0
      # @see https://semver.org/spec/v2.0.0.html#is-there-a-suggested-regular-expression-regex-to-check-a-semver-string
      # @type [Regexp]
      SEMVER_REGEXP = /
      ^
        (0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)
        (?:-((?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))
        ?(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?$
      /x.freeze

      # The library's version number should adhere to semantic versioning rules.
      #
      # @since 0.1.0
      # @return [void]
      def test_is_semantic
        assert_match SEMVER_REGEXP, OmniAuth::BCrypt::VERSION
      end
    end
  end
end
