FactoryBot.define do
  factory :cart_shipping_method, class: 'Cart::ShippingMethod' do
    name "MyString"
    days_min 1
    days_max 1
    price "9.99"
  end
end
