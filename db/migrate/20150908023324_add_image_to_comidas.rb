class AddImageToComidas < ActiveRecord::Migration
  def change
    add_column :comidas, :image, :string
  end
end
