# frozen_string_literal: true

module Types
  class GameSessionType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :desired_number_of_players, Integer
    field :active_number_of_players, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
