# Shopping Cart
Short description and motivation.

## Usage
In order to use this engine, your app should have classes that represent users
and products.
User should implement #email method.
Product should implement #title and #price methods.
You can name these classes whatever you want, although you need to define
user_class and product_class in `app/config/initializers/shopping_cart.rb`, e.g.:
```ruby
ShoppingCart.product_class = 'Book'
ShoppingCart.user_class = 'User'
```
Include the following line in your `application_controller.rb`:
```ruby
include ShoppingCart::Concerns::Controllers::ApplicationController
```
Include the following line in your user model, e.g. `user.rb`:
```ruby
include ShoppingCart::Concerns::Models::User
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'shopping-cart'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install shopping-cart
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
