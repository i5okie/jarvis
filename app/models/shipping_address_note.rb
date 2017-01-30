class ShippingAddressNote < ApplicationRecord
  belongs_to :shipping_address
  belongs_to :note
end
