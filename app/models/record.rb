class Record < ApplicationRecord
  belongs_to :user
  has_many :record_symptoms
  has_many :symptoms, through: :record_symptoms
end
