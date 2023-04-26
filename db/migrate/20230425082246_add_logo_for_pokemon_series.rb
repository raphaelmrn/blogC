class AddLogoForPokemonSeries < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemon_series, :logo, :string
  end
end
