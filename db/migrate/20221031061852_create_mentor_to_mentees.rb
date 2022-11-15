class CreateMentorToMentees < ActiveRecord::Migration[6.1]
  def change
    create_table :mentor_to_mentees do |t|
      t.string :mentor_uid
      t.string :mentee_uid
      t.integer :status
      t.integer :year

      t.timestamps
    end
  end
end
