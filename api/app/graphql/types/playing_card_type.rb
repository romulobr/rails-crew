# frozen_string_literal: true

module Types
  class PlayingCardType < Types::BaseObject
    field :id, ID, null: false
    field :number, Integer
    field :color, Integer
    field :is_rocket, Boolean
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
