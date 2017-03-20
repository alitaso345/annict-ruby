# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'annict/version'

Gem::Specification.new do |spec|
  spec.name          = "annict"
  spec.version       = Annict::VERSION
  spec.authors       = ["alitaso345"]
  spec.email         = ["a.maruyama@uec.ac.jp"]

  spec.summary       = %q{Simple wrapper for the Annict API}
  spec.description   = %q{Annict API v1 client library, written in Ruby}
  spec.homepage      = "https://github.com/alitaso345/annict-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "faraday", "~> 0.9"
  spec.add_runtime_dependency "faraday_middleware"
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
