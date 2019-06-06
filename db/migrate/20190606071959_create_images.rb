class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text :url
      t.bigint :item_id, null:false
      t.timestamps
    end
    add_foreign_key :images, :items
  end
end
