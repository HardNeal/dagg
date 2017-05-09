class AddActiveToTrackers < ActiveRecord::Migration[5.0]
  def change
    add_column :trackers, :active, :boolean, default: false
  end
end
