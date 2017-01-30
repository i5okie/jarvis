class CreateSalesOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :sales_orders do |t|
      t.string :number
      t.string :date
      t.references :customer, foreign_key: true
      t.string :shipping_address

      t.timestamps
    end
  end
end
