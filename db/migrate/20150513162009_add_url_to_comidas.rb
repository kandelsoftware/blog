class AddUrlToComidas < ActiveRecord::Migration
  def change
    add_column :comidas, :url, :string
  end
end
