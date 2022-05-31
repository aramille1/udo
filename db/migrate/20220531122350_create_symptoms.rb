class CreateSymptoms < ActiveRecord::Migration[7.0]
  def change
    create_table :symptoms do |t|
      t.string :name
      t.integer :code

      t.timestamps
    end
  end
end
