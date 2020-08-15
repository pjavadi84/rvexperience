class Like < ApplicationRecord
    belongs_to :user
    belongs_to :rv
    belongs_to :company
    belongs_to :destination
end
