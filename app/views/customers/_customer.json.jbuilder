json.extract! customer, :id, :name, :phone_number, :fax_number, :created_at, :updated_at
json.url customer_url(customer, format: :json)