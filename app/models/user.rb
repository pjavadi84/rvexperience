class User < ApplicationRecord
    has_many :reservations
    has_many :rvs, through: :reservations
    has_many :destinations
    has_many :likes
end
