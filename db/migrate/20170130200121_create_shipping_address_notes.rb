class CreateShippingAddressNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :shipping_address_notes do |t|
      t.references :shipping_address, foreign_key: true
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
