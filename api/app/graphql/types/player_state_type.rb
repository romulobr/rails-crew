# frozen_string_literal: true

module Types
  class PlayerStateType < Types::BaseObject
    field :id, ID, null: false
    field :is_active, Boolean
    field :player_id, Integer
    field :game_state_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
