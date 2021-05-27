class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :phone_number
      t.string :specialty
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
