# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dog_weather/version'

Gem::Specification.new do |spec|
  spec.name          = "dog_weather"
  spec.version       = DogWeather::VERSION
  spec.authors       = ["nakamura shinichirou"]
  spec.email         = ["naka5313@gmail.com"]
  spec.description   = %q{天気予報を取得するAPIです}
  spec.summary       = %q{天気予報を取得するAPIです}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_runtime_dependency 'json', '>= 1.7.3'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
