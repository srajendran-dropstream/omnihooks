# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omnihooks/version'

Gem::Specification.new do |spec|
  spec.name          = "omnihooks"
  spec.version       = OmniHooks::VERSION
  spec.authors       = ["Karl Falconer"]
  spec.email         = ["karl.falconer@falconerdevelopment.com"]
  spec.summary       = 'A generalized framework for multiple-provider webhooks subscriptions.'
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 3.1"
  spec.add_dependency 'rack', ">= 1.2", "< 3"
  spec.add_dependency 'hashie', ['>= 1.2', '< 4']
  
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.3.0'
end
