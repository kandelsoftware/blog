class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :role_id

      t.timestamps
    end
        Assignment.create(user_id: 1 ,role_id:1 )

  end
end
