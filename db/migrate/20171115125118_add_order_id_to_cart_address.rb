class AddOrderIdToCartAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :cart_addresses, :cart_order, foreign_key: true
  end
end
