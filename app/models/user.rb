class User < ApplicationRecord
    before_create -> {self.token = generate_token}
    has_many :reservations, dependent: :destroy
    has_many :rvs, through: :reservations
    has_many :comments, dependent: :destroy
    # also look alias
    # has_many :rvs, through: :comments
    has_many :destinations, dependent: :destroy
    has_many :likes, dependent: :destroy
    

    accepts_nested_attributes_for :reservations, :comments, :destinations, :likes, allow_destroy: true, reject_if: proc{|attribute| attribute['first_name'].blank?}

    validates :first_name, :last_name, :age, :number_of_guests, :address, :city, :state, :country, :zipcode, :email, :phone_number, presence: true

    private 

    def generate_token
        loop do
            token = SecureRandom.hex
            return token unless User.exists?({token: token})
        end
    end
end
