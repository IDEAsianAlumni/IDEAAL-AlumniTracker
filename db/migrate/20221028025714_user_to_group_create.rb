class UserToGroupCreate < ActiveRecord::Migration[6.1]
  def change
    create_table :user_to_groups do |t|
      t.string "mentor_uid"
      t.string "group_id"
      t.integer "year"
    end
  end
end
