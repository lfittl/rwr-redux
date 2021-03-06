# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'react_webpack_rails/redux_integration/version'

Gem::Specification.new do |spec|
  spec.name          = 'rwr-redux'
  spec.version       = ReactWebpackRails::ReduxIntegration::VERSION
  spec.authors       = ['Kacper Goliński', 'Rafał Gawlik']
  spec.email         = ['react@netguru.co']

  spec.summary       = 'Redux integration for react_webpack_rails'
  spec.description   = 'Redux integration for react_webpack_rails'
  spec.homepage      = 'https://github.com/netguru/rwr-redux'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.3'

  spec.add_dependency 'react_webpack_rails', '>= 0.1.0'
end
