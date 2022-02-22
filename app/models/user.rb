class User < ApplicationRecord
    has_many :locations, dependent: :destroy
    # has_many :ski_areas, through: :reviews

    has_secure_password
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates_uniqueness_of :email
end

# has maney Locations through reviews