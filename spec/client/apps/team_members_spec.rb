require 'rspec_helper'

describe HockeyDeploy::Client do
  before(:each) do
    HockeyDeploy.configure do |config|
      config.endpoint = '' #optional, if you self host your Hockey App
      config.api_key = ''
    end
    
    @client = HockeyDeploy::Client.new
  end
  
  describe ".apps" do
    it "can list all team members for an app" do
      puts @client.list_members_for_app('46b2673cb5e87ffe892ec97a1318dfd7')
    end
    
    it "can invite new team members for an app" do
      member = {
        :email => "jwemps+tester@gmail.com", # required
        :first_name => "Thomas",
        :last_name => "Dohmke",
        :role => "3", # 0 - owner, 1 - developer, 2 - member, 3 - tester (default)
        :tags => "internal,codenauts" # comma delimited list
      }
      @client.add_member_to_app('46b2673cb5e87ffe892ec97a1318dfd7', member)[:email].should == member[:email]
    end
    
    it "can delete an existing team member from an app" do
      @g = @client.list_members_for_app('46b2673cb5e87ffe892ec97a1318dfd7')[:app_users]
      puts @client.remove_member_from_app('46b2673cb5e87ffe892ec97a1318dfd7', @g.last[:id])
    end
  end
  
  after :each do
    HockeyDeploy.reset
  end
end