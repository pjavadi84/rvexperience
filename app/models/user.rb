class User < ApplicationRecord
    validates :first_name, :last_name, :age, :number_of_guests, :address, :city, :state, :country, :zipcode, :email, :phone_number, presence: true

    has_many :reservations
    has_many :rvs, through: :reservations
    has_many :destinations
    has_many :likes

    accepts_nested_attributes_for :reservations, :rvs, :destination, :likes, allow_destroy: true
end
