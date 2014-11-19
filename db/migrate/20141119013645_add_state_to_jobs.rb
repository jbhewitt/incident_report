class AddStateToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :state_id, :integer
    remove_column :people, :fist_name
  end
end
