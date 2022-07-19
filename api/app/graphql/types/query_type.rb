module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :playingCards, [Types::PlayingCardType], null: false, description: "returns all playing cards"
    field :players, [Types::PlayerType], null: false, description: "returns all players"
    field :playerStates, [Types::PlayerStateType], null: false, description: "returns all player states"
    field :gameSessions, [Types::GameSessionType], [null: false]

    def playingCards
      PlayingCard.all
    end

    def players
      Player.all
    end

    def playerStates
      PlayerState.all
    end

    def gameSessions
      GameSession.all
    end

  end
end
