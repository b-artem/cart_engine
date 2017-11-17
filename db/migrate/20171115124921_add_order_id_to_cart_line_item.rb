class AddOrderIdToCartLineItem < ActiveRecord::Migration[5.1]
  def change
    add_column :cart_line_items, :order_id, :integer
    add_index :cart_line_items, :order_id
  end
end
