class SalesOrder < ApplicationRecord
  belongs_to :customer

  has_many :purchased_items
  has_many :items, through: :purchased_items
end
