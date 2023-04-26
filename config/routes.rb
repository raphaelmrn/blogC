
Rails.application.routes.draw do
  root "accueil#home"

  resources :accueil
  resources :articles do
    resources :comments
  end
  resources :pokemon_series do
    resources :pokemon_sets
  end
  get 'blogs', to: 'articles#index'
  get 'stimulus', to: 'stimulus#index'

  #resources :pokemon_sets do
  #resources :pokemon_cards, controller: 'pokemon_cards'
end

