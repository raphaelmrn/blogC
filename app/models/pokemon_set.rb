class PokemonSet < ApplicationRecord
    belongs_to :pokemon_serie
    has_many :pokemon_cards, dependent: :destroy
    validates :name, presence: true
end
