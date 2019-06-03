class CreateItemsCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :items_categories, id: :bigint do |t|
      t.bigint :item, null: false, foreign_key: true
      t.bigint :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
