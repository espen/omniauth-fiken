# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-fiken/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-fiken"
  gem.version       = Omniauth::Fiken::VERSION
  gem.authors       = ["Espen Antonsen", "Jeremiah Church"]
  gem.description   = %q{OmniAuth strategy for Fiken using OAuth2}
  gem.summary       = %q{OmniAuth strategy for Fiken using OAuth2}
  gem.license       = 'MIT'
  gem.homepage      = "https://github.com/jeremiahchurch/omniauth-fiken"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'omniauth', '~> 1.0'
end
