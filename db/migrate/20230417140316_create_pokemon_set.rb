class CreatePokemonSet < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_sets do |t|

      t.string 'tcgId'
      t.string 'name'
      t.string 'logo'
      t.string 'symbol'
      t.object 'cardCount'
      t.number 'cardCount.total'
      t.number 'cardCount.official'
      t.timestamps
    end
  end
end
