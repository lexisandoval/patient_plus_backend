class User < ApplicationRecord

  has_secure_password
  has_many :medications
  has_many :emergency_contacts
  has_many :conditions
  has_many :doctors

end
