require 'domain_slice'
require File.join(File.dirname(__FILE__), %w[rails initializer])

module DomainSlice
  module Rails
    class << self
      def init
        # Strap all of the domain-slice crap into rails
      end
      
      def root
        
      end
    end
  end
end