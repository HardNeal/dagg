class AddMessageToPoints < ActiveRecord::Migration[5.0]
  def change
    add_column :points, :message, :text
  end
end
