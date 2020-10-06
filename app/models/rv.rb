class Rv < ApplicationRecord
    belongs_to :company
    has_many :reservations
    has_many :users, through: :reservations
end
