class AddTitleToTrackers < ActiveRecord::Migration[5.0]
  def change
    add_column :trackers, :title, :string
  end
end
