# class RvSerializer < ActiveModel::Serializer
class RvSerializer
  include FastJsonapi::ObjectSerializer
  # belongs_to :company
  # has_many :reservations
  # has_many :users, through: :reservations
 
  attributes :id, :name, :capacity, :rate_per_day, :company_id, :company

end
