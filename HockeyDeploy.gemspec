# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'required/version'

Gem::Specification.new do |gem|
  gem.name          = "HockeyDeploy"
  gem.version       = HockeyDeploy::VERSION
  gem.authors       = ["Jeremy Wemple"]
  gem.email         = ["jeremy+dev@gmail.com"]
  gem.homepage      = "http://jeremywemple.com"
  gem.summary       = %q{A rails gem to access your HockeyApp app deployment service API v2.}
  gem.description   = %q{The gem is designed to help you access data found on your HockeyApp account through their open API. As of August, 2013 the gem is incomplete. We started with the app commands to manage, edit and delete apps including managing members of the app using V2 of their API.}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency('httparty')
  gem.add_dependency('multi_json', '>= 1.3.4')

  gem.add_development_dependency 'rake'
  gem.add_development_dependency "rspec-rails", "~> 2.6"
end
