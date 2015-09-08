class RemoveImgToComidas < ActiveRecord::Migration
  def up
    remove_column :comidas, :img
  end

  def down
    add_column :comidas, :img, :string
  end
end
