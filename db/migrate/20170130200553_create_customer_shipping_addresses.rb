class CreateCustomerShippingAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_shipping_addresses do |t|
      t.references :shipping_address, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
