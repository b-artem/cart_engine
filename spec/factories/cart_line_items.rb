FactoryBot.define do
  factory :cart_line_item, class: 'Cart::LineItem' do
    product nil
    cart nil
    quantity 1
    price "9.99"
  end
end
