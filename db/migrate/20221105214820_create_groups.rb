class CreateGroups < ActiveRecord::Migration[6.1]
    def change
      create_table :groups do |t|
        t.string :year
        t.string :group_name
  
        t.timestamps
      end
    end
  end