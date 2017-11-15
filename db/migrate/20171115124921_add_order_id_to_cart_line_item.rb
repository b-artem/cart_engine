class AddOrderIdToCartLineItem < ActiveRecord::Migration[5.1]
  def change
    add_reference :cart_line_items, :cart_order, foreign_key: true
  end
end
