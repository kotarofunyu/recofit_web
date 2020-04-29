class AddRenewalToSetDatum < ActiveRecord::Migration[5.2]
  def change
    add_column :set_data, :renewal, :boolean
  end
end
