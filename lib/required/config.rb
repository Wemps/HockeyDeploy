module HockeyDeploy
  class API
    include HTTParty
    
    base_uri 'https://beta.grokrlabs.com/api/2' 
    
    def return_base_uri
      return base_uri
    end
    
  end
end