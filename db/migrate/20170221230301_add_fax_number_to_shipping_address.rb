class AddFaxNumberToShippingAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :shipping_addresses, :fax_number, :string
  end
end
