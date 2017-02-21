class CustomerContact < ApplicationRecord
  belongs_to :contact
  belongs_to :customer
  
end
