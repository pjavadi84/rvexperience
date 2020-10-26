class Company < ApplicationRecord
 
    # has_many :destinations
    # has_many :rvs, allow_destroy: true
    # has_many :reservations , through: :rvs
    has_secure_password 
    has_many :rvs, dependent: :destroy

    validates :email, uniqueness: { case_sensitive: false }
    # has_many :reservations, through: :rvs

    # at  some point i want to render a page where user can like company
    # has_many :likes 

    # accepts_nested_attributes_for :rvs, allow_destroy: true, reject_if: :all_blank
    
    before_create -> {self.token = generate_token}
    after_create :make_rvs

    def make_rvs
        rvs.create
    end
    
    accepts_nested_attributes_for :rvs
    # accepts_nested_attributes_for :reservations
    validates :name, presence: true
    
    private
    
    def generate_token
        loop do
            token = SecureRandom.hex
            return token unless User.exists?({token: token})
        end
    end
end
