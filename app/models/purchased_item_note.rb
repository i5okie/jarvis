class PurchasedItemNote < ApplicationRecord
  belongs_to :purchased_item
  belongs_to :note
end
