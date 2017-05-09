class ChangeLatitudeToFloat < ActiveRecord::Migration[5.0]
  def change
  	change_column :points, :latitude, :float
  end
end
