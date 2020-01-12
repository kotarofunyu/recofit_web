class Add < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :part, :string
  end
end
