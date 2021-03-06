class CreateMedications < ActiveRecord::Migration[6.1]
  def change
    create_table :medications do |t|
      t.string :name
      t.string :prescription
      t.references :user, null: false, foreign_key: true
      t.references :condition, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true


      t.timestamps
    end
  end
end
