class CreateComidaTranslation < ActiveRecord::Migration
  def self.up
      Comida.create_translation_table!({
        name: :string,
        description: :text
      }, {
        :migrate_data => true
      })
    end

    def self.down
      Comida.drop_translation_table! :migrate_data => true
    end
end
