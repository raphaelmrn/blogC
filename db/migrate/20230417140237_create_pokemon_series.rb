class CreatePokemonSerie < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_serie do |t|

      t.string :tcg_id;
      t.string :name;
      t.timestamps
    end
  end
end
