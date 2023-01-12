class User < ApplicationRecord
    has_secure_password

    has_many :buses
    has_many :buses, through: :bookings
    
    validates :username, presence: true, uniqueness: true
end
