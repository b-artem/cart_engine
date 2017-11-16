FactoryBot.define do
  factory :cart_coupon, class: 'Cart::Coupon' do
    code '1234567890'
    discount '20'
    valid_until '2070-09-21'
  end
end
