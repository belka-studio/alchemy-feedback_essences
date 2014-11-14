$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "alchemy-feedback_essences/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "alchemy-feedback_essences"
  s.version     = Alchemy::FeedbackEssences::VERSION
  s.authors     = ["Dmitry Tsvetkov"]
  s.email       = ["vlaew5@gmail.com"]
  s.homepage    = "http://belka-studio.ru"
  s.summary     = "Feedback essences for Alchemy CMS"
  s.description = "Feedback essences for Alchemy CMS."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.7"

  s.add_development_dependency "sqlite3"
end
