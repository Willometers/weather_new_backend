class Review < ApplicationRecord
    belongs_to :ski_area
    belongs_to :user
end
