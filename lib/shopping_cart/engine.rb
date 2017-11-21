require 'aasm'
require 'cancancan'
require 'coffee-rails'
require 'devise'
require 'haml-rails'
require 'pry'
require 'turbolinks'
require 'wicked'
require_relative '../../app/models/shopping_cart/concerns/user'

module ShoppingCart
  class Engine < ::Rails::Engine
    isolate_namespace ShoppingCart

    config.generators do |g|
      g.test_framework :rspec, fixture: false
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
      g.assets false
      g.helper false
    end
  end
end
