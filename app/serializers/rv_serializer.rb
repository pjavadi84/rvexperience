# class RvSerializer < ActiveModel::Serializer
class RvSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  belongs_to :company
  attributes :id, :name, :capacity, :rate_per_day
end
