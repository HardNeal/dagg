class ChangeDataTypeForLatitude < ActiveRecord::Migration[5.0]
  def up
    change_column :points, :latitude, :decimal
  end

  def down
    change_column :points, :latitude, :string
  end
end
