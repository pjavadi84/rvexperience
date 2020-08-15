class Destination < ApplicationRecord
    belongs_to :user
    belongs_to :rv
    has_many :comments
    has_many :likes
end
