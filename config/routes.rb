Rails.application.routes.draw do
  get 'word_game/game', to: 'word_game#game'

  get 'word_game/score', to: 'word_game#score'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
