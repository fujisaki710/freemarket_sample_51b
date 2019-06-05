class AddColumnsToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :user_id, :bigint,  null: false, foreign_key: true
    add_column :likes, :item_id, :bigint,  null: false, foreign_key: true
  end
end
