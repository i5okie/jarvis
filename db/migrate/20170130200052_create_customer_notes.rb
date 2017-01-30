class CreateCustomerNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_notes do |t|
      t.references :customer, foreign_key: true
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
