class AddMainToSetDatum < ActiveRecord::Migration[5.2]
  def change
    add_column :set_data, :main, :boolean
  end
end
