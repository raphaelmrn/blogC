class PokemonSerie < ApplicationRecord
    has_many :sets, dependent: :destroy
    validates :name, tcg_id: true
end
