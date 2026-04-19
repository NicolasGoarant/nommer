class PathologySuggestion < ApplicationRecord
  belongs_to :user
  belongs_to :pathology

  STATUSES = %w[pending exploring confirmed dismissed].freeze
  validates :status, inclusion: { in: STATUSES }

  def matched_symptoms_array
    JSON.parse(matched_symptoms || "[]")
  end

  def status_label
    { "pending" => "À explorer", "exploring" => "En cours",
      "confirmed" => "Confirmé", "dismissed" => "Écarté" }[status]
  end
end
