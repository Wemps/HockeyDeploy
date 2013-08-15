module HockeyDeploy
  module Data
    
    include HTTParty
    base_uri HockeyDeploy.endpoint
    default_params :output => 'json'
    format :json  
    
    def get_request(req, req_options={})
      puts "GET REQUEST"
      req_options = @options.merge({:body => req_options})
      t = HockeyDeploy::Data.get(req, req_options).body
      return MultiJson.load(t, :symbolize_keys => true)
    end
    
    def post_request(req, req_options={})
      puts "PUT REQUEST"
      req_options = @options.merge({:body => req_options})
      t = HockeyDeploy::Data.post(req, req_options).body
      if t != ""
        return MultiJson.load(t, :symbolize_keys => true)
      end
    end
    
    def delete_request(req, req_options={})
      puts "DELETE REQUEST"
      req_options = @options.merge({:body => req_options})
      t = HockeyDeploy::Data.delete(req, req_options).body
      if t != " "
        return MultiJson.load(t, :symbolize_keys => true)
      end
    end
    
  end
end
