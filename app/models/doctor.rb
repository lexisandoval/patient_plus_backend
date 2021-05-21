class Doctor < ApplicationRecord

  has_many :medications
  has_many :users, through: :medications

  validates :name, :phone_number, :specialty, :location, presence: true

end
