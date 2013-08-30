module Hockeydeploy
  extend Config
  
  # Wrapping the API
  class Client
        
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}
    require 'data.rb'
    
    attr_reader :api_key, :options
    
    # Get your api_key by logging into Hockey and going to your profile area
    def initialize(api_key=nil, endpoint=nil)
      @api_key = api_key
      @api_key ||= Hockeydeploy.api_key
      @endpoint = endpoint
      @endpoint ||= Hockeydeploy.endpoint
      
      @options = { :headers => {'X-HockeyAppToken' => @api_key} }
    end    
    
    include Hockeydeploy::Client::Apps

    include Hockeydeploy::Data
  end
end
