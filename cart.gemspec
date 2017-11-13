$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cart/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cart"
  s.version     = Cart::VERSION
  s.authors     = ["b-artem"]
  s.email       = ["artemb.dev@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Cart."
  s.description = "TODO: Description of Cart."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
