class User < ApplicationRecord

    has_many :reservations
    has_many :rvs, through: :reservations
    has_many :comments
    has_many :rvs, through: :comments
    has_many :destinations
    has_many :likes
    

    accepts_nested_attributes_for :reservations, :comments
end
