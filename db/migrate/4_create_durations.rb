class CreateDurations < ActiveRecord::Migration[7.0]
  def change
    create_table :durations do |t|
      t.string :time
      t.string :price

      t.timestamps
    end
  end
end
