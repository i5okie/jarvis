class AddPhoneNumberToShippingAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :shipping_addresses, :phone_number, :string
  end
end
