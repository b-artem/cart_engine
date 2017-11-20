module ShoppingCart
  module Concerns
    module Models
      module User
        extend ActiveSupport::Concern

        included do
          has_many :orders, class_name: 'ShoppingCart::Order'
        end
      end
    end
  end
end
