$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cart/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cart"
  s.version     = Cart::VERSION
  s.authors     = ["b-artem"]
  s.email       = ["artemb.dev@gmail.com"]
  s.homepage    = "https://github.com/b-artem/cart_engine"
  s.summary     = "Shopping cart and checkout flow"
  s.description = "Adds shopping cart and checkout flow to an app"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency 'aasm', '~> 4.12', '>= 4.12.3'
  s.add_dependency 'rails', '~> 5.1.4'

  s.add_development_dependency 'capybara', '~> 2.15', '>= 2.15.4'
  s.add_development_dependency 'database_cleaner', '~> 1.6', '>= 1.6.2'
  s.add_development_dependency 'factory_bot_rails', '~> 4.8', '>= 4.8.2'
  s.add_development_dependency 'rspec-rails', '~> 3.7', '>= 3.7.1'
  s.add_development_dependency 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
  s.add_development_dependency 'sqlite3'
end
