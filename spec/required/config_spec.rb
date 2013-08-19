require 'rspec_helper'

describe HockeyDeploy::Config do
  
  HockeyDeploy::Config::CONFIG_KEYS.each do |key|
    describe ".#{key}" do
      it 'should return the default value for #{key}' do
        puts "CONFIGURATION"
        puts HockeyDeploy.send(key)
        HockeyDeploy.send(key).should == HockeyDeploy::Config.const_get("DEFAULT_#{key.upcase}")
      end
    end
  end
    
  describe 'endpoint accessible' do
    it "should return the endpoint" do
      HockeyDeploy.endpoint.should == HockeyDeploy::Config::DEFAULT_ENDPOINT
    end
  end
  
  describe 'api_key accessible' do
    it "should return the api_key" do
      HockeyDeploy.api_key.should == HockeyDeploy::Config::DEFAULT_API_KEY
    end
  end
  
  after :each do
    HockeyDeploy.reset
  end
  
end