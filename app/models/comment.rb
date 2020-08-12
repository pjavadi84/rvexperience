class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :destination
    belongs_to :rv
end
