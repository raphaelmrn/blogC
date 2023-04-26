class PokemonSerie < ApplicationRecord
    has_many :pokemon_sets, dependent: :destroy
    validates :name, :tcgId, :logo, presence: true
end
