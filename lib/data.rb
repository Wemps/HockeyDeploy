module hockeydeploy
  module Data
    
    include HTTParty
    default_params :output => 'json'
    format :json  
    
    def get_request(req, req_options={})
      puts "GET REQUEST"
      req_options = @options.merge({:body => req_options})
      t = Hockeydeploy::Data.get(req, req_options).body
      return MultiJson.load(t, :symbolize_keys => true)
    end
    
    def post_request(req, req_options={})
      puts "PUT REQUEST"
      puts Hockeydeploy.endpoint
      puts Hockeydeploy.api_key
      req_options = @options.merge({:body => req_options})
      t = Hockeydeploy::Data.post(req, req_options).body
      if t != ""
        return MultiJson.load(t, :symbolize_keys => true)
      end
    end
    
    def delete_request(req, req_options={})
      puts "DELETE REQUEST"
      puts Hockeydeploy.endpoint
      puts Hockeydeploy.api_key
      req_options = @options.merge({:body => req_options})
      t = Hockeydeploy::Data.delete(req, req_options).body
      if t != " "
        return MultiJson.load(t, :symbolize_keys => true)
      end
    end
    
  end
end
