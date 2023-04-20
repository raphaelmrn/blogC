class PokemonCard < ApplicationRecord
    belongs_to :pokemon_set
    validates :name, :tcg_id, :image, presence: true
end