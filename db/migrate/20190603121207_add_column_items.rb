class AddColumnItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :name, :string, null: false
    add_column :items, :price, :integer,null: false
    add_column :items, :item_condition, :string, null: false
    add_column :items, :delivery_fee, :string, null: false
    add_column :items, :shipping_area, :string, null: false
    add_column :items, :shipping_date, :string, null: false
    add_column :items, :discription, :text, null: false
    add_column :items, :shipping_rule, :string, null: false
    add_column :items, :user, :bigint,null: false, foreign_key: true
    add_column :items, :brand, :string
  end
end
