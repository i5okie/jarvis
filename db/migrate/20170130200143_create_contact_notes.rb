class CreateContactNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_notes do |t|
      t.references :contact, foreign_key: true
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
