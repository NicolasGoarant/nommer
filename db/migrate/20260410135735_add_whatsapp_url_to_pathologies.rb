class AddWhatsappUrlToPathologies < ActiveRecord::Migration[7.2]
  def change
    add_column :pathologies, :whatsapp_url, :string
  end
end
