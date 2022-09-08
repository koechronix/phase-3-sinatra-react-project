class CreateLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :levels do |t|
      t.string :level
      t.string :importance
    end
  end
end
