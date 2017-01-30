class CreateShippingAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :shipping_addresses do |t|
      t.string :address_alias
      t.string :address_type
      t.string :address_1
      t.string :address_2
      t.string :address_city
      t.string :address_country
      t.string :address_state
      t.string :address_zip
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
