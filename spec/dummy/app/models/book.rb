class Book < ApplicationRecord
  def cover_image
    'https://example.com/image.jpg'
  end

  def short_description
    "Short description of book #{self.id}"
  end
end
