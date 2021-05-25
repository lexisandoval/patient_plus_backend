class User < ApplicationRecord

  has_secure_password
  has_many :conditions
  has_many :medications
  has_many :doctors, through: :medications

  validates :name, :username, :email, presence: true
  validates :username, :email, uniqueness: true

end
