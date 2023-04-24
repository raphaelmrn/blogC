class PokemonCardsController < ApplicationController
    def index
    @pokemon_cards = PokemonCard.all
    end

    def show
        @pokemon = PokemonCard.find(params[:tcg_id,])
    end
end