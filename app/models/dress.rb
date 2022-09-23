class Dress < ApplicationRecord
  enum season: {tops: 0, bottoms: 1, shoes: 2, bags: 3, accessories: 4 }
  has_one_attached :image
  belongs_to :user

  def get_image
    (image.attached?) ? image : 'no_image.jpg'
  end
end
