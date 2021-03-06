# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arduino_bit/version'

Gem::Specification.new do |spec|
  spec.name          = "arduino_bit"
  spec.version       = ArduinoBit::VERSION
  spec.authors       = ["Brian Kelly"]
  spec.email         = ["polymonic@gmail.com"]
  spec.summary       = %q{Gem for communicating with littleBits' Arduino Bit}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'arduino_firmata', '~>0.3.7'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
end
