class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :weight
      t.integer :rep
      t.integer :set
      t.boolean :new

      t.timestamps
    end
  end
end
