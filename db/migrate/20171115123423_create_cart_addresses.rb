class CreateCartAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_addresses do |t|
      t.string :type
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :zip
      t.string :country
      t.string :phone
      t.integer :user_id
      t.timestamps
    end
    add_index :cart_addresses, :type
    add_index :cart_addresses, :user_id
  end
end
