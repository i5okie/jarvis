class PurchasedItem < ApplicationRecord
  belongs_to :item
  belongs_to :sales_order

  has_many :purchased_item_notes
  has_many :notes, through: :purchased_item_notes
end
