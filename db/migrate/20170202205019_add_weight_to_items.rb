class AddWeightToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :weight, :string
  end
end
