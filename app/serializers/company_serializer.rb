class CompanySerializer < ActiveModel::Serializer
    # include FastJsonapi::ObjectSerializer
    
    attributes  :id, :name, :email, :address, :city, :state, :zipcode, :phonenumber, :building_number
    has_many :rvs
    # binding.pry
    # has_many :rvs, class_name: '::Rv'
end