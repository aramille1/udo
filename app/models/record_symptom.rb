class RecordSymptom < ApplicationRecord
  belongs_to :record
  belongs_to :symptom
end
