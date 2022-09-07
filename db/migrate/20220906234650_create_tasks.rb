class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :item
      t.string :importance
      t.integer :level_id
      t.timestamps
    end
  end
end
