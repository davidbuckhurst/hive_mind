$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "deviceorama_hive/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "deviceorama_hive"
  s.version     = DeviceoramaHive::VERSION
  s.authors     = ["Joe Haig"]
  s.email       = ["joe.haig@bbc.co.uk"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of DeviceoramaHive."
  s.description = "TODO: Description of DeviceoramaHive."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end