class CreateEmergencycontacts < ActiveRecord::Migration[6.1]
  def change
    create_table :emergencycontacts do |t|
      t.string :name
      t.string :phone_number
      t.string :relationship
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
