class RenameColumnToItemsCategories < ActiveRecord::Migration[5.2]
  def change
    rename_column :items_categories, :item, :item_id
    rename_column :items_categories, :category, :category_id
  end
end
