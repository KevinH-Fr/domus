class Home < ApplicationRecord
  belongs_to :user
  has_many :home_sales

  has_many_attached :images
  validate :images_format_and_size

  def images_format_and_size
  end

  def full_address
    "#{self.address}" " #{self.city}" " #{self.cp}"
  end

end
