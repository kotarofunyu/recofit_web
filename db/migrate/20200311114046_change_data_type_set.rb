class ChangeDataTypeSet < ActiveRecord::Migration[5.2]
  def change
    change_column :set_data, :weight, :float
  end
end
