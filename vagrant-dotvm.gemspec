# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-dotvm/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-dotvm"
  spec.version       = VagrantPlugins::Dotvm::VERSION
  spec.authors       = ["Krzysztof Magosa"]
  spec.email         = ["krzysztof@magosa.pl"]
  spec.summary       = "Easy YAML based multi machine config approach for Vagrant."
  spec.homepage      = "http://github.com/krzysztof-magosa/vagrant-dotvm"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
