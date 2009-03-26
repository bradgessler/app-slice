require File.join(File.dirname(__FILE__), %w[.. spec_helper])

DomainSlice::TestHelpers::require_rails!

describe Initiailizer do
  it "should initialize without DOMAIN_SLICE"
  
  it "should initialize with DOMAIN_SLICE"
  
  it %{should override RAILS_ROOT/config/environments.rb 
    with RAILS_ROOT/domains/DOMAIN_SLICE/config/environments.rb}
  
  it %{should override RAILS_ROOT/config/environments/RAILS_ENV.rb 
    with RAILS_ROOT/domains/DOMAIN_SLICE/config/environments/RAILS_ENV.rb}
end