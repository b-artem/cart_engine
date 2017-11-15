class AddCouponIdToCartOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :cart_orders, :cart_coupon, foreign_key: true
  end
end
