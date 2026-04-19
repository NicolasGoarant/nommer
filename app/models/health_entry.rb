class HealthEntry < ApplicationRecord
  belongs_to :user

  ENTRY_TYPES = %w[symptom consultation exam treatment].freeze
  BODY_ZONES  = %w[tête cou thorax abdomen pelvis dos membres_supérieurs membres_inférieurs général peau neurologique autre].freeze

  validates :entry_type,  presence: true, inclusion: { in: ENTRY_TYPES }
  validates :occurred_on, presence: true
  validates :title,       presence: true
  validates :intensity,   numericality: { in: 1..5 }, allow_nil: true

  scope :symptoms,      -> { where(entry_type: "symptom") }
  scope :consultations, -> { where(entry_type: "consultation") }
  scope :exams,         -> { where(entry_type: "exam") }
  scope :treatments,    -> { where(entry_type: "treatment") }
  scope :recent,        -> { order(occurred_on: :desc) }
  scope :chronological, -> { order(occurred_on: :asc) }

  def symptom?;      entry_type == "symptom";      end
  def consultation?; entry_type == "consultation"; end
  def exam?;         entry_type == "exam";         end
  def treatment?;    entry_type == "treatment";    end

  def entry_type_label
    { "symptom" => "Symptôme", "consultation" => "Consultation",
      "exam" => "Examen", "treatment" => "Traitement" }[entry_type]
  end

  def intensity_label
    return nil unless intensity
    %w[Très\ léger Léger Modéré Intense Très\ intense][intensity - 1]
  end
end
