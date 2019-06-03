class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.string :status,   null: false
      t.bigint :item, null: false, foreign_key: true
      t.bigint :item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
