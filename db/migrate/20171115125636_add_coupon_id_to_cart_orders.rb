class AddCouponIdToCartOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :cart_orders, :coupon_id, :integer, foreign_key: true
  end
  add_index :cart_orders, :coupon_id
end
