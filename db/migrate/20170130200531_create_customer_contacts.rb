class CreateCustomerContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_contacts do |t|
      t.references :contact, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
