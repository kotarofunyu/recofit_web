class RemoveItemsFromEvent < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :weight, :integer
    remove_column :events, :rep, :integer
    remove_column :events, :set, :integer
    remove_column :events, :new, :integer
  end
end
