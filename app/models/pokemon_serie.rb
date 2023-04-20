class PokemonSerie < ApplicationRecord
    has_many :pokemon_sets, dependent: :destroy
    validates :name, :tcgId, presence: true
end
