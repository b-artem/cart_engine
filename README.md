# Cart
Short description and motivation.

## Usage
In order to use this engine, your app should have classes that represent users
and products.
User should implement #email method.
Product should implement #title and #price methods.
You can name these classes whatever you want, although you need to define
user_class and product_class in `app/config/initializers/cart.rb`, e.g.:
```ruby
Cart.product_class = 'Book'
Cart.user_class = 'User'
```
Include the following line in your `application_controller.rb`:
```ruby
include Cart::Concerns::Controllers::ApplicationController
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'cart'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install cart
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
