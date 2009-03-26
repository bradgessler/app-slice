require 'rubygems'
require 'spec'

# Loads various ruby files and application stacks for testing purposes
module DomainSlice
  module TestHelpers
    class << self
      def require_domain_slice!
        require File.join(File.dirname(__FILE__), %w[.. lib domain_slice])
      end
      
      def require_middleware!
        require 'rack'
        require File.join(File.dirname(__FILE__), %w[.. lib domain_slice middleware])
      end
      
      def require_rails!
        # Load whatever is needed to test domain slice integration with rails
        # require 'rails'
        require File.join(File.dirname(__FILE__), %w[.. lib domain_slice rails])
      end
    end
  end
end