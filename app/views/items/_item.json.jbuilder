json.extract! item, :id, :name, :description, :manufacturer, :model, :length, :width, :height, :shipping_weight_lbs, :shipping_weight_kgs, :created_at, :updated_at
json.url item_url(item, format: :json)