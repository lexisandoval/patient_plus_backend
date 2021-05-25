class Condition < ApplicationRecord

  has_many :medications
  belongs_to :user

  validates :name, presence: true

end
