class CreateGroupToUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :group_to_users do |t|
      t.string :MentorID
      t.string :GroupID

      t.timestamps
    end
  end
end
