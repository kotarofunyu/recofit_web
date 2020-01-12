class CreateSetData < ActiveRecord::Migration[5.2]
  def change
    create_table :set_data do |t|
      t.integer :weight
      t.integer :rep
      t.integer :set
      t.integer :event_id

      t.timestamps
    end
  end
end
