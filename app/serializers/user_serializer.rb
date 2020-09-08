class UserSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
    has_many :reservations
    has_many :rvs, through: :reservations
    has_many :comments
    has_many :rvs, through: :comments
    has_many :destinations
    has_many :likes
    
  attributes :first_name, :last_name, :age, :number_of_guests, :address, :city, :state, :country, :zipcode, :phone_number
end
