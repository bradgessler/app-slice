require File.join(File.dirname(__FILE__), %w[.. spec_helper])

AppSlice::TestHelpers.require_app_slice!

describe AppSlice do
  it "should have init!" do
    AppSlice.init!
  end
  
  it "should initialize with APP_SLICE value" do
    APP_SLICE = 'foo.com'
    AppSlice.init!
    AppSlice.app.should eql(APP_SLICE)
  end
  
  it "should have name" do
    AppSlice.should respond_to(:name)
  end
  
  it "should have app" do
    AppSlice.should respond_to(:app)
  end
end
