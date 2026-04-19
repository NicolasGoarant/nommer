class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :health_entries, dependent: :destroy
  has_many :pathology_suggestions, dependent: :destroy

  GENDERS = %w[female male other].freeze

  validates :first_name, presence: true, on: :update
  validates :gender, inclusion: { in: GENDERS }, allow_nil: true

  def age
    return nil unless birthdate
    ((Date.today - birthdate) / 365.25).floor
  end

  def months_of_history
    return 0 if health_entries.empty?
    oldest = health_entries.minimum(:occurred_on)
    ((Date.today - oldest) / 30.0).ceil
  end
end
