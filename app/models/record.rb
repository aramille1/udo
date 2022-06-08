class Record < ApplicationRecord
  before_create :generate_token
  belongs_to :user
  has_many :record_symptoms, dependent: :destroy
  has_many :symptoms, through: :record_symptoms
  has_one_attached :photo
  has_one_attached :pdf

  private

  def generate_token
    self.token = rand(0..1000).to_s
  end

end
