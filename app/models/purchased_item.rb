class PurchasedItem < ApplicationRecord
  belongs_to :item
  belongs_to :sales_order
end
