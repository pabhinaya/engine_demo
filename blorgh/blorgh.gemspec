$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blorgh/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blorgh"
  s.version     = Blorgh::VERSION
  s.authors     = ["pabhinaya"]
  s.email       = ["abhinaya.pabbisetty@freshworks.com"]
  s.homepage    = "https://github.com/pabhinaya/user_onboarding"
  s.summary     = "Summary of UserOnboarding."
  s.description = "Description of UserOnboarding."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.22.5"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
