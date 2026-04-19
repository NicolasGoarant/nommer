class AddDismissivePhrasesAndTestimonialsToPathologies < ActiveRecord::Migration[7.2]
  def change
    add_column :pathologies, :dismissive_phrases, :text
    add_column :pathologies, :testimonials, :text
  end
end
