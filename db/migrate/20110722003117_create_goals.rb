class CreateGoals < ActiveRecord::Migration
  def self.up
    create_table :goals do |t|
      t.string "goal_name"
      t.string "goal_type"     # eg. run/walk/exercise
      t.integer "count", :null => false     # eg. 1/5/30
      t.string "measure", :null => false    # eg. mi/km
      t.integer "time_count", :null => false  # eg. 1/5/30
      t.string "time_measure", :null => false # eg. days/months/hours
      t.boolean "private", :null => false, :default => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :goals
  end
end
