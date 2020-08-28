class Company < ApplicationRecord
  acts_as_token_authenticatable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable
    # has_many :destinations
    has_many :rvs
    has_many :reservations 
    has_many :users, through: :reservations
    has_many :likes
end
