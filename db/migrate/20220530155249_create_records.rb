class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.string :disease
      t.string :notes
      t.string :medication
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
