# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-freebsd/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-freebsd"
  spec.version       = Vagrant::FreeBSD::VERSION
  spec.authors       = ["Olexande Grynchuk"]
  spec.email         = ["agrynchuk@gmail.com"]
  spec.description   = "Guest plugin for Vagrant FreeBSD"
  spec.summary       = "Guest plugin for Vagrant FreeBSD"
  spec.homepage      = "https://github.com/ph20/vagrant-freebsd"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # development dependencies  
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end