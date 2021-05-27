class Doctor < ApplicationRecord

  has_many :medications
  belongs_to :user

  validates :name, :phone_number, :specialty, :location, presence: true

end
