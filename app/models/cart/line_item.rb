module Cart
  class LineItem < ApplicationRecord
    belongs_to :product
    belongs_to :cart, optional: true
    belongs_to :order, optional: true

    validates :quantity, presence: true,
              numericality: { only_integer: true, greater_than_or_equal_to: 1  }

    def subtotal
      price * quantity
    end
  end
end
