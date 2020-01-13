class AddUserIdToTrainingRecord < ActiveRecord::Migration[5.2]
  def change
    add_column :training_records, :user_id, :integer
  end
end
