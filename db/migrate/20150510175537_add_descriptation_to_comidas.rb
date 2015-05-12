class AddDescriptationToComidas < ActiveRecord::Migration
  def change
    change_column :comidas, :description, :text
  end
end
