class RemoveMenuFromTrainingRecords < ActiveRecord::Migration[5.2]
  def change
    remove_column :training_records, :menu
  end
end
