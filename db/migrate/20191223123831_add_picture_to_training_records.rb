class AddPictureToTrainingRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :training_records, :picture, :string
  end
end
