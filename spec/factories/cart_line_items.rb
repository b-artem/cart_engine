FactoryBot.define do
  factory :cart_line_item, class: 'Cart::LineItem' do
    product { build :product }
    cart { build :cart_cart }
    price { product.price }
    quantity 1
  end
end
