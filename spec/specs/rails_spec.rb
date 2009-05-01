require File.join(File.dirname(__FILE__), %w[.. spec_helper])

AppSlice::TestHelpers::require_rails!

describe Initiailizer do
  it "should initialize without APP_SLICE"
  
  it "should initialize with APP_SLICE"
  
  it %{should override RAILS_ROOT/config/environments.rb 
    with RAILS_ROOT/apps/APP_SLICE/config/environments.rb}
  
  it %{should override RAILS_ROOT/config/environments/RAILS_ENV.rb 
    with RAILS_ROOT/apps/APP_SLICE/config/environments/RAILS_ENV.rb}
end
