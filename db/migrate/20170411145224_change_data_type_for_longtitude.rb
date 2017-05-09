class ChangeDataTypeForLongtitude < ActiveRecord::Migration[5.0]
  def up
    change_column :points, :longtitude, :decimal
  end

  def down
    change_column :points, :longtitude, :string
  end
end
