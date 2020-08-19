class Company < ApplicationRecord
    # has_many :destinations
    has_many :rvs, through: :destinations
    has_many :reservations 
    has_many :users, through: :reservations
    has_many :likes
end
