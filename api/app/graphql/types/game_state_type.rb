# frozen_string_literal: true

module Types
  class GameStateType < Types::BaseObject
    field :id, ID, null: false
    field :tick_count, Integer
    field :game_is_started, Boolean
    field :player_turn, Integer
    field :game_session_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
