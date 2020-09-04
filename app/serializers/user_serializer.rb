class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :age, :number_of_guests, :address, :city, :state, :country, :zipcode, :phone_number, 
end
