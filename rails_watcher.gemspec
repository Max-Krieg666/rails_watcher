$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rails_watcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_watcher"
  s.version     = RailsWatcher::VERSION
  s.authors     = ["Maxim Bogoyavlenskiy"]
  s.email       = ["maxon_B@mail.ru"]
  s.homepage    = "https://github.com/Max-Krieg666/rails_watcher"
  s.description = "Watch & audit user activity."
  s.summary     = "NOPE"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'rails', '~> 4.2'
  s.add_dependency 'rails-i18n', '~> 4.0'
  s.add_dependency 'bootstrap-sass'
end
