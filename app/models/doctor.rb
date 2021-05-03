class Doctor < ApplicationRecord

  has_many :medications
  has_many :users, through: :medications

end
