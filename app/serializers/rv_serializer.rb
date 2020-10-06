class RvSerializer < ActiveModel::Serializer
  belongs_to :company
  has_many :reservations
  has_many :users, through: :reservations
  # attributes :id, :company
  attributes :name, :capacity, :rate_per_day
end
