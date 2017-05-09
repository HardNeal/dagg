class ChangeImeiToImeiCode < ActiveRecord::Migration[5.0]
  def up
    rename_column :trackers, :imei, :imei_code
  end

  def down
    rename_column :trackers, :imei_code, :imei
  end
end
