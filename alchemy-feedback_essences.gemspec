$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "alchemy-feedback_essences/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "alchemy-feedback_essences"
  s.version     = AlchemyFeedbackEssences::VERSION
  s.authors     = ["Dmitry Tsvetkov"]
  s.email       = ["vlaew5@gmail.com"]
  s.homepage    = "http://belka-studio.ru"
  s.summary     = "Feedback essences for Alchemy CMS"
  s.description = "Feedback essences for Alchemy CMS."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.1.1"
  s.add_runtime_dependency 'alchemy_cms', ['~> 3.0.0']

  s.add_development_dependency "sqlite3"
end
