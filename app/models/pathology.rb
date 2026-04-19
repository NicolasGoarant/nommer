class Pathology < ApplicationRecord
  has_many :pathology_suggestions

  CATEGORIES = {
    "douleur_chronique" => "Douleurs chroniques",
    "fatigue"           => "Fatigue chronique",
    "psychiatrie"       => "Santé mentale",
    "auto_immune"       => "Maladies auto-immunes",
    "neurologie"        => "Neurologie",
    "rare"              => "Maladies rares",
    "digestif"          => "Troubles digestifs"
  }.freeze

  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true
  scope :published, -> { where(published: true) }

  def key_symptoms_array
    JSON.parse(key_symptoms || "[]")
  end

  def avg_diagnosis_delay_text
    return "Inconnu" unless avg_diagnosis_delay
    years  = avg_diagnosis_delay / 12
    months = avg_diagnosis_delay % 12
    parts  = []
    parts << "#{years} an#{years > 1 ? 's' : ''}" if years > 0
    parts << "#{months} mois" if months > 0
    parts.join(" et ")
  end

  def nb_patients_label
    return nil unless nb_patients.present?
    nb = nb_patients
    # Ajouter "de" après million/milliard/millier si pas déjà présent
    nb = nb.gsub(/(\d)\s+(million|milliard|millier)(?!\s+de)(\s+)/i) do
      "#{$1} #{$2} de#{$3}"
    end
    # Si contient déjà "femmes", "personnes", "cas", "diagnostiqué" → libellé direct
    if nb.match?(/femmes|personnes|cas|diagnostiqué/)
      "#{nb} concerné·es en France"
    else
      "#{nb} personnes concernées en France"
    end
  end
end
