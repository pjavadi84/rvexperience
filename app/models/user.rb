class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :reservations
    has_many :rvs, through: :reservations
    has_many :destinations
    has_many :likes

    accepts_nested_attributes_for :reservations, :rvs, :destinations, :likes, allow_destroy: true
end
