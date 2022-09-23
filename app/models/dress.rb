class Dress < ApplicationRecord
  enum category: {tops: 0, bottoms: 1, shoes: 2, bags: 3, accessories: 4 }
  has_one_attached :image
  belongs_to :user
  has_many :dress_seasons, dependent: :destroy
  has_many :seasons, through: :dress_seasons, dependent: :destroy

  def get_image
    (image.attached?) ? image : 'no_image.jpg'
  end
end
