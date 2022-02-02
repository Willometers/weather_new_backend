class User < ApplicationRecord
    has_many :locations

    has_secure_password

    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

    validates_uniqueness_of :email

end
