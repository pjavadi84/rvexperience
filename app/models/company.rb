class Company < ApplicationRecord
  # acts_as_token_authenticatable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable
    # has_many :destinations
    has_many :rvs
    has_many :reservations , through: :rvs

    # at  some point i want to render a page where user can like company
    # has_many :likes 

    accepts_nested_attributes_for :rvs
    
end
