class AddColumnToHimalayas < ActiveRecord::Migration
  def change
    add_column :himalayas, :apellidos, :string
  end
end
