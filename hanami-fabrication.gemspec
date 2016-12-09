# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hanami/fabrication/version'

Gem::Specification.new do |spec|
  spec.name          = "hanami-fabrication"
  spec.version       = Hanami::Fabrication::VERSION
  spec.authors       = ["Luca Guidi"]
  spec.email         = ["me@lucaguidi.com"]

  spec.summary       = "Fabrication for Hanami"
  spec.description   = "Fabrication support for Hanami"
  spec.homepage      = "https://github.com/jodosha/hanami-fabrication"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.metadata['allowed_push_host'] = "https://rubygems.org"

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "hanami-utils", "< 2.0"
  spec.add_dependency "fabrication",  "~> 2.16"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake",    "~> 10.0"
  spec.add_development_dependency "rspec",   "~> 3.5"
end
