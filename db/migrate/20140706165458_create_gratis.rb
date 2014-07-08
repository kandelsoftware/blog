class CreateGratis < ActiveRecord::Migration
  def change
    create_table :gratis do |t|
      t.string :email

      t.timestamps
    end
  end
end
