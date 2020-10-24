class CompanySerializer < ActiveModel::Serializer
    include FastJsonapi::ObjectSerializer
    # has_many :rvs, class_name: '::Rv'
    has_many :rvs
    attributes :id, :name, :address, :city, :state, :zipcode, :phonenumber, :building_number, :rvs
end