class CreateTrainingRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :training_records do |t|
      t.string :menu
      t.integer :weight
      t.integer :repitition
      t.integer :sets
      t.text :comment

      t.timestamps
    end
  end
end
