class GameState < ApplicationRecord
  belongs_to :GameSession
  has_many :PlayerStates
end
