class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :prefecture_id
      t.string :name, null: false
      t.integer :price, null: false
      t.string :item_condition, null: false
      t.string :delivery_fee, null: false
      t.string :shipping_area, null: false
      t.string :shipping_date, null: false
      t.text :discription, null: false
      t.string :shipping_rule, null: false
      t.references :user, null: false, foreign_key: true
      t.string :brand
      t.timestamps
    end
  end
end
