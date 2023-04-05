
Rails.application.routes.draw do
  root "accueil#home"

  resources :accueil
  resources :articles do
    resources :comments
  end
  get 'blogs', to: 'articles#index'
  get 'stimulus', to: 'stimulus#index'
end

