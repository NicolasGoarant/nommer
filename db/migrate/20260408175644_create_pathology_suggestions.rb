class CreatePathologySuggestions < ActiveRecord::Migration[7.2]
  def change
    create_table :pathology_suggestions do |t|
      t.references :user,      null: false, foreign_key: true
      t.references :pathology, null: false, foreign_key: true
      t.text    :reasoning
      t.text    :matched_symptoms
      t.string  :status, default: "pending"
      t.timestamps
    end
  end
end
