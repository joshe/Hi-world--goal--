class ChangeTypeToGoalType < ActiveRecord::Migration
  def self.up
    rename_column :Goals, :type, :goal_type
  end

  def self.down
    rename_column :Goals, :goal_type, :type
  end
end
