require 'rspec_helper'

describe hockeydeploy::Config do
  
  hockeydeploy::Config::CONFIG_KEYS.each do |key|
    describe ".#{key}" do
      it 'should return the default value for #{key}' do
        puts "CONFIGURATION"
        puts hockeydeploy.send(key)
        hockeydeploy.send(key).should == hockeydeploy::Config.const_get("DEFAULT_#{key.upcase}")
      end
    end
  end
    
  describe 'endpoint accessible' do
    it "should return the endpoint" do
      hockeydeploy.endpoint.should == hockeydeploy::Config::DEFAULT_ENDPOINT
    end
  end
  
  describe 'api_key accessible' do
    it "should return the api_key" do
      hockeydeploy.api_key.should == hockeydeploy::Config::DEFAULT_API_KEY
    end
  end
  
  after :each do
    hockeydeploy.reset
  end
  
end