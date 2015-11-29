# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'transer/version'

Gem::Specification.new do |spec|
  spec.name          = "transer"
  spec.version       = Transer::VERSION
  spec.authors       = ["penguin-san"]
  spec.email         = ["itosouplus@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{translator sentence and word, idiom on console}
  spec.description   = %q{translator sentence and word, idiom on console}
  spec.homepage      = "https://github.com/penguin-san"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "thor"
  spec.add_dependency "addressable"

end
