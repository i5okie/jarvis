class CustomerShippingAddress < ApplicationRecord
  belongs_to :shipping_address
  belongs_to :customer
end
