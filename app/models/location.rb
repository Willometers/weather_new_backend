class Location < ApplicationRecord
    validates :location, uniqueness: true
    belongs_to :user, optional: true
end
