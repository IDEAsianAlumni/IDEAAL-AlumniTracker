class DropOldTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :mentees
    drop_table :mentors
    drop_table :mentor_assignments
    drop_table :member_trees
  end
end
