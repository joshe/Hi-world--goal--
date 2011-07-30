class ChangePrivacyColumnNameToPrivate < ActiveRecord::Migration
  def self.up
    rename_column :goals, :privacy, :private
  end

  def self.down
    rename_column :goals, :private, :privacy
  end
end
