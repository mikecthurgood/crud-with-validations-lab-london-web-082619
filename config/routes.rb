Rails.application.routes.draw do
  get 'songs', to: 'songs#index', as: 'songs'

  get 'songs/new', to: 'songs#new', as: 'new_song'

  get 'songs/:id', to: 'songs#show', as: 'song'

  get 'songs/:id/edit', to: 'songs#edit', as: 'edit_song'

  post 'songs', to: 'songs#create'

  patch 'songs/:id', to: 'songs#update'

  delete 'songs/:id', to: 'songs#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
