class AddCouponIdToCartCarts < ActiveRecord::Migration[5.1]
  def change
    add_column :cart_carts, :coupon_id, :integer
  end
  add_index :cart_carts, :coupon_id
end
