class CreateMenuNames < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
