FactoryBot.define do
  factory :cart_coupon, class: 'Cart::Coupon' do
    code "MyString"
    discount "9.99"
    valid_until "2017-11-15"
  end
end
