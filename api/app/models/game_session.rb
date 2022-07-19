class GameSession < ApplicationRecord
  has_one :game_state
end
