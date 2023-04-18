class CreatePokemonCards < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_cards do |t|

      t.string 'tcgId'
      t.string 'localId' number: true
      t.string 'name'
      t.string 'image'
      t.string 'category'
      t.string 'illustrator'
      t.string 'rarity'
      t.object 'variants'
      t.boolean 'variants.normal'
      t.boolean 'variants.reverse'
      t.boolean 'variants.holo'
      t.boolean 'variants.firstEdition'
      t.string 'dexId' array: true
      t.number 'hp'
      t.string 'types' array: true
      t.string 'evolveForm'
      t.string 'description'
      t.string 'level'
      t.string 'stage'
      t.string 'suffix'
      t.object 'item'
      t.string 'item.name'
      t.string 'item.effect'
      t.timestamps
    end
  end
end
