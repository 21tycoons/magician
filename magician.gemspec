# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'magician/version'

Gem::Specification.new do |gem|
  gem.name          = "magician_wizard"
  gem.version       = Magician::VERSION
  gem.authors       = [""]
  gem.email         = [""]
  gem.description   = "Magician is a Rails engine for producing easy wizard controllers"
  gem.summary       = "Use Magician to turn your controller into a wizard"
  gem.homepage      = "https://github.com/schneems/wicked"
  gem.license       = "MIT"
  gem.extra_rdoc_files = [
    "README.md"
  ]
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency             "railties", [">= 3.0.7"]
  gem.add_development_dependency "rails",    [">= 3.0.7"]
  gem.add_development_dependency "capybara", [">= 0"]
  gem.add_development_dependency "appraisal"
  gem.add_development_dependency "test-unit"
end
