class AddNbPatientsToPathologies < ActiveRecord::Migration[7.2]
  def change
    add_column :pathologies, :nb_patients, :string
  end
end
