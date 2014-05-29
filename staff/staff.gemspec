$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "staff/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "staff"
  s.version     = Staff::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Staff."
  s.description = "TODO: Description of Staff."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.1"

  s.add_development_dependency 'pg', '~> 0.17.1'
end
