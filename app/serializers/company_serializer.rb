class CompanySerializer < ActiveModel::Serializer
    include FastJsonapi::ObjectSerializer
    # has_many :rvs, class_name: '::Rv'
    attributes :id, :name, :email, :address, :city, :state, :zipcode, :phonenumber, :building_number, :rvs
end