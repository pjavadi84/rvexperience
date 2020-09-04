class Reservation < ApplicationRecord
    belongs_to :user
    has_many :destinations
    belongs_to :rv
end
