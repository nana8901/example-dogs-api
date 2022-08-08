class User < ApplicationRecord
  has_secure_password
  has_many :dog
  validates :email, presence: true, uniqueness: true
end
