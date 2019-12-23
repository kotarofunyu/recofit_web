class RemoveElementsFromTrainingRecords < ActiveRecord::Migration[5.2]
  def change
    remove_column :training_records, :weight, :integer
    remove_column :training_records, :repitition, :integer
    remove_column :training_records, :sets, :integer
  end
end
