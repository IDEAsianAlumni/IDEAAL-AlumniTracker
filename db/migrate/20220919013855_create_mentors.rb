class CreateMentors < ActiveRecord::Migration[6.1]
  def change
    create_table :mentors do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
