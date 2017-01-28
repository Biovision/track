$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "track/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "track"
  s.version     = Track::VERSION
  s.authors     = ["Maxim Khan-Magomedov"]
  s.email       = ["maxim.km@gmail.com"]
  s.homepage    = "https://github.com/Biovision/track"
  s.summary     = "Tracking IP, metrics and UA"
  s.description = "Adds Browser and Agent models and models for metrics"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.1"

  s.add_development_dependency "pg"
end
