# hockeydeploy

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'hockeydeploy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hockeydeploy

## Usage

require "hockeyapp"

# To get your Hockey App API Key, login and go to your profile
HockeyApp.configure do |config|
  config.endpoint = YOUR_CLIENT_KEY #optional, if you self host your Hockey App
  config.api_key_ = YOUR_API KEY
end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
