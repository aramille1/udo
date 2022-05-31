class AddColumnToRecordSymptoms < ActiveRecord::Migration[7.0]
  def change
    add_column :record_symptoms, :symptom_id, :integer
  end
end
