json.extract! purchased_item, :id, :item_id, :serial_number, :created_at, :updated_at
json.url purchased_item_url(purchased_item, format: :json)