class Dress < ApplicationRecord
  enum season: {all: 0, spring: 1, summer: 2, autumn: 3, winter: 4 }
  has_one_attached :image
  belongs_to :user
end
