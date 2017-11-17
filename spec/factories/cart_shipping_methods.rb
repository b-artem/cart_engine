FactoryBot.define do
  factory :cart_shipping_method, class: 'Cart::ShippingMethod' do
    name 'Pick-up In Store'
    days_min 3
    days_max 20
    price 5
  end
end
