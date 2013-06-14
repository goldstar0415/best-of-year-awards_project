class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :user
      t.string :balance_amout
      t.string :payment_option
      t.string :shipping_first_name
      t.string :shipping_last_name
      t.string :shipping_address
      t.string :shipping_optional_address
      t.string :shipping_city
      t.string :shipping_state
      t.string :shipping_zip_code
      t.string :shipping_country
      t.string :shipping_method
      t.string :email
      t.string :token_key

      t.timestamps
    end
    add_index :orders, :user_id
  end
end
