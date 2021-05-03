class Condition < ApplicationRecord

  has_many :medications
  belongs_to :user

end
