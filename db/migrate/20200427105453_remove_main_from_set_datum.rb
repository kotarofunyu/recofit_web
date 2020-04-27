class RemoveMainFromSetDatum < ActiveRecord::Migration[5.2]
  def change
    remove_column :set_data, :main, :boolean
  end
end
