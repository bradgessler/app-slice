require File.join(File.dirname(__FILE__), %w[.. spec_helper])

DomainSlice::TestHelpers.require_domain_slice!

describe DomainSlice do
  it "should have init!" do
    DomainSlice.init!
  end
  
  it "should initialize with DOMAIN_SLICE value" do
    DOMAIN_SLICE = 'foo.com'
    DomainSlice.init!
    DomainSlice.domain.should eql(DOMAIN_SLICE)
  end
  
  it "should have name" do
    DomainSlice.should respond_to(:name)
  end
  
  it "should have domain" do
    DomainSlice.should respond_to(:domain)
  end
end