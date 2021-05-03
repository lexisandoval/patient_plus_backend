class Medication < ApplicationRecord

  belongs_to :user
  belongs_to :condition
  belongs_to :doctor

end
