class HomeSale < ApplicationRecord
  belongs_to :home

  def self.ransackable_attributes(auth_object = nil)
    ["description"]
  end

end
