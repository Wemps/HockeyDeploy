module HockeyDeploy
  module Config  
    
    CONFIG_KEYS = [
        :api_key,
        :endpoint
    ].freeze
    
    DEFAULT_ENDPOINT  = 'https://rink.hockeyapp.net/api/2/apps'
    DEFAULT_API_KEY   = nil
    
    attr_accessor *CONFIG_KEYS
    
    def self.extended(base)
      base.reset
    end

    def reset
      self.endpoint   = DEFAULT_ENDPOINT
      self.api_key    = DEFAULT_API_KEY
    end
    
    def configure
      yield self
    end
    
    def options
      CONFIG_KEYS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end
    
  end
end