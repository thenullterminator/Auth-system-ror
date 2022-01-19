class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    validates :email, presence: true, format: { with:/.*/, message:"invalid email address" }
    validates :password_digest, presence: true
end
