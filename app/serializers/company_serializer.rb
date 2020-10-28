class CompanySerializer < ActiveModel::Serializer
    include FastJsonapi::ObjectSerializer
    has_many :rvs
    attributes  :id, :name, :email, :address, :city, :state, :zipcode, :phonenumber, :building_number
    # binding.pry
    # has_many :rvs, class_name: '::Rv'
end