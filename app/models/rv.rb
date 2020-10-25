class Rv < ApplicationRecord
    belongs_to :company
    has_many :reservations
    has_many :users, through: :reservations

    # validates :name, :capacity, :rate_per_day
end
