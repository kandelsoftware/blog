class AddUrlToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :url, :string
  end
end
