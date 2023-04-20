class Pokemon < ApplicationRecord
  include HTTParty

  def self.get_serie
    response = HTTParty.get('https://api.tcgdex.net/v2/fr/series')
    last_set = response.last
    PokemonSerie.find_or_create_by(name: last_set['name'], tcgId:last_set['id'])
  end

  def self.get_sets
    response = HTTParty.get('https://api.tcgdex.net/v2/fr/sets')
    response.each do |set|
      PokemonSet.find_or_create_by(name: set.dig('name'), tcg_id: set.dig('id'), logo: set.dig('logo'), pokemon_serie: PokemonSerie.first)
    end
  end

  def self.get_card(set_id)
    ps = PokemonSet.find_by(tcg_id: set_id)
    response = HTTParty.get("https://api.tcgdex.net/v2/fr/sets/#{set_id}")
    cards_final = response.dig('cards')
    cards_final.each do | card |
      PokemonCard.find_or_create_by(name: card.dig('name'), tcg_id: card.dig('id'), image: card.dig('image'), pokemon_set: ps )
    end
  end
end
