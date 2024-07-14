class Home < ApplicationRecord
  belongs_to :user

  has_many_attached :images
  validate :images_format_and_size

  def images_format_and_size
  end

end
