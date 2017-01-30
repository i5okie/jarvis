class Customer < ApplicationRecord
  has_many :customer_notes
  has_many :notes, through: :customer_notes

  has_many :customer_contacts
  has_many :contacts, through: :customer_contacts

  has_many :customer_shipping_addresses
  has_many :shipping_addresses, through: :customer_shipping_addresses

end
