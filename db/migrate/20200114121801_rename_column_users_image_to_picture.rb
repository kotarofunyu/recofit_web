class RenameColumnUsersImageToPicture < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :image, :picture
  end
end
