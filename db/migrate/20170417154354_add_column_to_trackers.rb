class AddColumnToTrackers < ActiveRecord::Migration[5.0]
  def change
    add_reference :trackers, :user, foreign_key: true
  end
end
