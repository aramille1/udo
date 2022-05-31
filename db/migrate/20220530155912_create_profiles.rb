class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.date :date_of_birth
      t.string :gender
      t.string :allergies
      t.string :medication
      t.integer :dosage
      t.integer :times_per_day
      t.string :vaccinations
      t.string :blood_type
      t.string :race
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
