class PokemonSetsController < ApplicationController
    def index
    @pokemon_sets = PokemonSet.all
    end

    def show
        @pokemon = PokemonSet.find(params[:tcg_id,])
    end
end