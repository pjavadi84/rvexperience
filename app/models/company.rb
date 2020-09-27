class Company < ApplicationRecord
 
    # has_many :destinations
    # has_many :rvs, allow_destroy: true
    # has_many :reservations , through: :rvs
    
    has_many :rvs
    has_many :reservations, through: :rvs

    # at  some point i want to render a page where user can like company
    # has_many :likes 

    # accepts_nested_attributes_for :rvs, allow_destroy: true, reject_if: :all_blank
    accepts_nested_attributes_for :rvs

    accepts_nested_attributes_for :reservations
    
end
