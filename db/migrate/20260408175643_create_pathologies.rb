class CreatePathologies < ActiveRecord::Migration[7.2]
  def change
    create_table :pathologies do |t|
      t.string  :name,               null: false
      t.string  :slug,               null: false
      t.string  :category
      t.text    :description
      t.integer :avg_diagnosis_delay
      t.text    :key_symptoms
      t.text    :key_exams
      t.text    :bias_notes
      t.text    :what_to_ask
      t.string  :association_name
      t.string  :association_url
      t.boolean :published, default: false
      t.timestamps
    end
    add_index :pathologies, :slug, unique: true
  end
end
