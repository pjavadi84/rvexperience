class Rv < ApplicationRecord
    has_many :reservations
    has_many :users, through: :reservations
    has_many :destinations
    has_many :comments
    has_many :likes

    belongs_to :company

    has_one_attached :image

    accepts_nested_attributes_for :company
end
