class AddYoutubeIdToPathologies < ActiveRecord::Migration[7.2]
  def change
    add_column :pathologies, :youtube_id, :string
  end
end
