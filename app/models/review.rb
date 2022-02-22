class Review < ApplicationRecord
    belongs_to :ski_area
    belongs_to :user

    validates :comments, presence: true
    validate :rating, presence: true
end
