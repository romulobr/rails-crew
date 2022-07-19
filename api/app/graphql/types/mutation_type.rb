module Types
  class MutationType < Types::BaseObject
    field :create_game_session, mutation: Mutations::CreateGameSession
  end
end
