class CreatePokemonSeries < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_series do |t|

      t.string 'tcgId'
      t.string 'name'
      t.timestamps
    end
  end
end
