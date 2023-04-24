class PokemonSeriesController < ApplicationController
    def index
    @pokemon_series = PokemonSerie.all
    end

    def show
        @pokemon = PokemonSerie.find(params[:tcg_id,])
    end
end