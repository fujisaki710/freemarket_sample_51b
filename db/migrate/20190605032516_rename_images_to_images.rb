class RenameImagesToImages < ActiveRecord::Migration[5.2]
  def change
    rename_column :images, :images, :url
  end
end
