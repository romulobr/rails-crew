class PlayerState < ApplicationRecord
  has_and_belongs_to_many :playing_cards
  belongs_to :player
  belongs_to :game_state
end
