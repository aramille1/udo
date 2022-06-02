class Record < ApplicationRecord
  belongs_to :user
  has_many :record_symptoms, dependent: :destroy
  has_many :symptoms, through: :record_symptoms
end
