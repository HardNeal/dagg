class AddProtocolToTrackers < ActiveRecord::Migration[5.0]
  def change
    add_reference :trackers, :protocol, foreign_key: true
  end
end
