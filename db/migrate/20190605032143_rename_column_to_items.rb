class RenameColumnToItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :user, :user_id
    rename_column :items, :brand, :brand_id
  end
end
