class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :contact_alias
      t.string :contact_type
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :phone_number
      t.string :extension
      t.string :mobile_phone_number
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
