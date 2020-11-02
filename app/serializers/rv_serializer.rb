# class RvSerializer < ActiveModel::Serializer
class RvSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, :name, :capacity, :rate_per_day
  belongs_to :company
  # has_many :reservations
  # has_many :users, through: :reservations
end
