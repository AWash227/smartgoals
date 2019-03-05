class AddDefaultValueToMilestoneComplete < ActiveRecord::Migration[5.2]
  def change
    change_column :milestones, :complete, :boolean, :default => false
  end
end
