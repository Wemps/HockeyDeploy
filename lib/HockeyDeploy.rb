# Include the Base URI Components
require 'httparty'
require 'multi_json'

# Include the Required Config Files
Dir[File.expand_path('../required/*.rb', __FILE__)].each{|f| require f}

# Include the Different Modules
Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}

# Include The Client
require 'client.rb'

module hockeydeploy
  extend Config
end
