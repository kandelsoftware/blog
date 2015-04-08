class CreateDescuentos < ActiveRecord::Migration
  def change
    create_table :descuentos do |t|
      t.string :persona
      t.string :hora
      t.string :menu
      t.string :fecha
      t.string :nombre
      t.string :apellidos
      t.string :email
      t.string :telefono

      t.timestamps
    end
  end
end
