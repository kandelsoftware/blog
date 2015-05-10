class CreateExitpops < ActiveRecord::Migration
  def change
    create_table :exitpops do |t|
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end
