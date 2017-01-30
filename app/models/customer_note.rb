class CustomerNote < ApplicationRecord
  belongs_to :customer
  belongs_to :note
end
