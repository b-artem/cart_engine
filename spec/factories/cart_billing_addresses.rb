FactoryBot.define do
  factory :cart_billing_address, class: 'Cart::BillingAddress',
                                 parent: :cart_address do
    type 'BillingAddress'
  end
end
