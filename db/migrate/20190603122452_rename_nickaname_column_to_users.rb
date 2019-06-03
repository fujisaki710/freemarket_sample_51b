class RenameNickanameColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :nickaname, :nickname
  end
end
