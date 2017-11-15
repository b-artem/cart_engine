FactoryBot.define do
  factory :cart_order, class: 'Cart::Order' do
    number "MyString"
    completed_at "2017-11-15 14:46:11"
    state "MyString"
    user nil
    cart_shipping_method nil
    use_billing_address_as_shipping false
  end
end
