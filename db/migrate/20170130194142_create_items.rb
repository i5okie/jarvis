class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :manufacturer
      t.string :model_name
      t.string :length
      t.string :wirdth
      t.string :height
      t.string :shipping_weight_lbs
      t.string :shipping_weight_kgs

      t.timestamps
    end
  end
end
