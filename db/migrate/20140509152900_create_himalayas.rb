class CreateHimalayas < ActiveRecord::Migration
  def change
    create_table :himalayas do |t|
      t.string :persona
      t.string :hora
      t.string :menu
      t.date :fecha
      t.string :nombre
      t.string :email
      t.string :telefono

      t.timestamps
    end
  end
end
