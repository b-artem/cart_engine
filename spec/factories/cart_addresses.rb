FactoryBot.define do
  factory :cart_address, class: 'Cart::Address' do
    type ""
    first_name "MyString"
    last_name "MyString"
    address "MyString"
    city "MyString"
    zip "MyString"
    country "MyString"
    phone "MyString"
    user nil
  end
end
