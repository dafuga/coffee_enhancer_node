# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coffee_enhancer/version'

Gem::Specification.new do |spec|
  spec.name          = "coffee_enhancer"
  spec.version       = CoffeeEnhancer::VERSION
  spec.authors       = ["Daniel Fugere"]
  spec.email         = ["danielfugere28@gmail.com"]

  spec.summary       = %q{A simple package that emhances the amazing experience that is of using coffeescript.}
  spec.description   = %q{A simple package that emhances the amazing experience that is of using coffeescript.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.add_dependency 'coffee-script', '~> 2.4'
  spec.add_dependency 'jasmine'
  spec.add_dependency 'guard'
  spec.add_dependency 'guard-coffeescript'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end