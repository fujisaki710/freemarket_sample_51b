class RenameUserColumnToSnsCredentials < ActiveRecord::Migration[5.2]
  def change
    rename_column :sns_credentials, :user, :user_id
  end
end
