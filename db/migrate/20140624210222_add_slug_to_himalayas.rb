class AddSlugToHimalayas < ActiveRecord::Migration
  def change
    add_column :himalayas, :slug, :string
    add_index :himalayas, :slug

  end
end
