class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text     :photo
      t.integer  :postcord
      t.string   :prefecture
      t.string   :city
      t.string   :address
      t.string   :building
      t.text     :comment
      t.bigint   :user,        null:false, foreign_key: true

      t.timestamps
    end
  end
end
