class Contact < ApplicationRecord
  belongs_to :customer

  def full_name
    first_name + " " + last_name
  end

end
