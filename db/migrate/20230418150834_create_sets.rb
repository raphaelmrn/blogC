class CreateSets < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_sets do |t|
      t.string :name
      t.string :tcg_id
      t.string :logo
      t.references :pokemon_serie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
