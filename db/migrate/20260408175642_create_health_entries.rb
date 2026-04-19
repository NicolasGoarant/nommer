class CreateHealthEntries < ActiveRecord::Migration[7.2]
  def change
    create_table :health_entries do |t|
      t.references :user,       null: false, foreign_key: true
      t.string     :entry_type, null: false
      t.date       :occurred_on, null: false
      t.string     :title,      null: false
      t.text       :description
      t.string     :body_zone
      t.integer    :intensity
      t.string     :doctor_specialty
      t.string     :exam_name
      t.boolean    :exam_result_available, default: false
      t.text       :exam_result_notes
      t.timestamps
    end
  end
end
