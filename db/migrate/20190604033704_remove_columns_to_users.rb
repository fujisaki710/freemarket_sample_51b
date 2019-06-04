class RemoveColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :family_name, :string
    remove_column :users, :first_name, :string
    remove_column :users, :family_name_kana, :string
    remove_column :users, :first_name_kana, :string
    remove_column :users, :birthday, :date
    remove_column :users, :phone_number, :integer
  end
end
