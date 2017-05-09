class CreateProtocols < ActiveRecord::Migration[5.0]
  def change
    create_table :protocols do |t|

      t.timestamps
    end
  end
end
