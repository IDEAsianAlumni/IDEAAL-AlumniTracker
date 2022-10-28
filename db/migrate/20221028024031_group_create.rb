class GroupCreate < ActiveRecord::Migration[6.1]
  def change
    create_table :group do |t|
      t.string "Group_Name"
    end
  end
end
