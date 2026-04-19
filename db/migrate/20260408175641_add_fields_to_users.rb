class AddFieldsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :gender,     :string
    add_column :users, :birthdate,  :date
    add_column :users, :context,    :text
  end
end
