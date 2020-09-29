class CompanySerializer < ActiveModel::Serializer
    has_many :rvs, class_name: '::Rv'
    has_many :reservations, through: :rvs

    attributes :name, :address, :city, :state, :zipcode, :phonenumber, :building_number
end