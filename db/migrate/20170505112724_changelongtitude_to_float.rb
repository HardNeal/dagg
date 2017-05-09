class ChangelongtitudeToFloat < ActiveRecord::Migration[5.0]
  def change
  	change_column :points, :longtitude, :float
  end
end
