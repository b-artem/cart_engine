class CreateCartCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_carts do |t|

      t.timestamps
    end
  end
end
