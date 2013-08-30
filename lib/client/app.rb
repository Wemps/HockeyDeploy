module Hockeydeploy
  class Client
    # Defines methods related to users
    module Apps
      Dir[File.expand_path('../apps/*.rb', __FILE__)].each{|f| require f}
      
      def list_available_apps
        get_request('', @options)
      end
      
      include Hockeydeploy::Client::Apps::TeamMembers      
    end
  end
end