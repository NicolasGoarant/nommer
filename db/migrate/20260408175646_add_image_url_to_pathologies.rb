class AddImageUrlToPathologies < ActiveRecord::Migration[7.2]
  def change
    add_column :pathologies, :image_url, :string
  end
end
