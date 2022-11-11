class CreateGroupToUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :group_to_users do |t|
      t.string :uid
      t.string :group_id

      t.timestamps
    end
  end
end
