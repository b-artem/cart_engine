class CreateCartOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_orders do |t|
      t.string :number
      t.datetime :completed_at
      t.string :state
      t.references :user, foreign_key: true
      t.references :cart_shipping_method, foreign_key: true
      t.boolean :use_billing_address_as_shipping, default: false
      t.timestamps
    end
    add_index :cart_orders, :number
  end
end
