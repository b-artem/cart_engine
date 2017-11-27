module ShoppingCart
  class Address < ApplicationRecord
    belongs_to :user, class_name: ShoppingCart.user_class.to_s, optional: true
    belongs_to :order, optional: true

    validates :type, inclusion: { in: %w(BillingAddress ShippingAddress),
      message: I18n.t('shopping_cart.models.address.invalid_type', value: "%{value}" ) }
  end
end
