class AddTimestampToPoints < ActiveRecord::Migration[5.0]
  def up
    add_column :points, :point_time, :timestamp
  end

  def down
    remove_column :points, :point_time
  end
end
