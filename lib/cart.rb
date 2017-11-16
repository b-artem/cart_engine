require 'cart/engine'

module Cart
  mattr_accessor :product_class

  def self.product_class
    @@product_class.constantize
  end
end
