class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :user_image
  has_many :dresses, dependent: :destroy

  # def get_user_image(width, height)
  # unless user_image.attached?
  #   file_path = Rails.root.join('app/assets/images/no_image.jpeg')
  #   user_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  # end
  # user_image.variant(resize_to_limit: [width, height]).processed
  # end

  def get_user_image
    (user_image.attached?) ? user_image : 'no_image.jpg'
  end

  def self.guest
    find_or_create_by!(name: 'guestuser' ,email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "guestuser"
    end
  end

end
