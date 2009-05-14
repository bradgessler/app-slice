require 'rubygems'
require 'spec'

# Loads various ruby files and application stacks for testing purposes
module AppSlice
  module TestHelpers
    class << self
      def require_app_slice!
        require File.join(File.dirname(__FILE__), %w[.. lib app_slice])
      end
      
      def require_middleware!
        require 'rack'
        require File.join(File.dirname(__FILE__), %w[.. lib app_slice middleware])
      end
      
      def require_rails!
      end
    end
  end
end