class RemoveItemColumnToLikes < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :user, :bigint
  end
end
