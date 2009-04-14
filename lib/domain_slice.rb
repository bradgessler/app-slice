DOMAIN_SLICE = ENV['DOMAIN_SLICE'] unless defined?(DOMAIN_SLICE)

module DomainSlice
  class << self
    attr_accessor :domain
    
    def exists?
      !@domain.nil? and @domain != ''
    end
    
    # Binds the DomainSlice to the environmental variable DOMAIN_SLICE
    def init!
      @domain = DOMAIN_SLICE || ''
    end
  end
end

DomainSlice.init!