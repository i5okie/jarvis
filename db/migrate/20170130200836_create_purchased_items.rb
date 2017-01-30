class CreatePurchasedItems < ActiveRecord::Migration[5.0]
  def change
    create_table :purchased_items do |t|
      t.references :item, foreign_key: true
      t.references :sales_order, foreign_key: true
      t.string :serial_number

      t.timestamps
    end
  end
end
