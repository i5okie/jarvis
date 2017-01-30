class CreatePurchasedItemNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :purchased_item_notes do |t|
      t.references :purchased_item, foreign_key: true
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
