class CreateTrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :trackers do |t|
      t.string :imei
      t.string :phone

      t.timestamps
    end
  end
end
