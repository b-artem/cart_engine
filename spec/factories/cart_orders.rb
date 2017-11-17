FactoryBot.define do
  factory :cart_order, class: 'Cart::Order' do
    user { build :user }
  end
end
