FactoryBot.define do
  factory :user, class: Cart.user_class.to_s do
    email { Faker::Internet.email }
  end
end
