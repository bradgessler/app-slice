require 'rubygems'
require 'spec'

module DomainSlice
  module TestHelpers
    class << self
      def require_domain_slice
        require File.join(File.dirname(__FILE__), %w[.. lib domain_slice])
      end
    end
  end
end