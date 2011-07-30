class ChangeGoalNameColumnName < ActiveRecord::Migration
  def self.up
    rename_column :goals, :name, :goal_name
  end

  def self.down
    rename_column :goals, :goal_name, :name
  end
end
