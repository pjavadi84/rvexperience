class Company < ApplicationRecord
    has_many :rvs
    has_many :reservations 
    has_many :users, through: :reservations
end
