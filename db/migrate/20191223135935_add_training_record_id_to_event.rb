class AddTrainingRecordIdToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :training_record_id, :integer
  end
end
