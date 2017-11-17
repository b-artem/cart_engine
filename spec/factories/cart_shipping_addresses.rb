FactoryBot.define do
  factory :cart_shipping_address, class: 'Cart::ShippingAddress',
                                  parent: :cart_address do
    type 'ShippingAddress'
  end
end
