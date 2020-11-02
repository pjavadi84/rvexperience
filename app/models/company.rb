class Company < ApplicationRecord
    include ActiveModel::Serializers::JSON

    # before_create -> {self.token = generate_token}
    # after_create :make_rvs
    has_many :rvs, dependent: :destroy
    # has_secure_password 
    accepts_nested_attributes_for :rvs, allow_destroy: true, reject_if: proc{|attribute| attribute['name'].blank?}
    # validates :email, uniqueness: { case_sensitive: false } 
    validates :email, :name, :address, :phonenumber, uniqueness: true
    validates :name, presence: true
    
    # private
    
    # def generate_token
    #     loop do
    #         token = SecureRandom.hex
    #         return token unless Company.exists?({token: token})
    #     end
    # end
end
