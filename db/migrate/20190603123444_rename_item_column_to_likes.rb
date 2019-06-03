class RenameItemColumnToLikes < ActiveRecord::Migration[5.2]
  def change
    rename_column :likes, :item, :user
  end
end
