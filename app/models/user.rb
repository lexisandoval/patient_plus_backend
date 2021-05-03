class User < ApplicationRecord

  has_secure_password

  has_many :emergencycontacts
  has_many :conditions
  has_many :medications
  has_many :doctors, through: :medications

end
