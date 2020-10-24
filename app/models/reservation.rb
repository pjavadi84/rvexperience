class Reservation < ApplicationRecord
    belongs_to :user
    has_many :destinations
    belongs_to :rv

    validates :start_date,:end_date, presence: true
end
