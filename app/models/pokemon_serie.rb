class PokemonSerie < ApplicationRecord
    has_many :pokemon_sets, dependent: :destroy
    validates :name, :tcg_id, presence: true
end
