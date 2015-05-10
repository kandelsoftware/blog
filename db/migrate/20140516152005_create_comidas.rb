class CreateComidas < ActiveRecord::Migration
  def change
    create_table :comidas do |t|
      t.integer :menu_id
      t.string :name
      t.string :price
      t.string :img
      t.text :description

      t.timestamps
    end
    add_index :comidas, :menu_id
  end
end
