module Mutations

  class CreateGameSession < BaseMutation
    argument :desired_number_of_players, Integer
    argument :name, String

    field :game_session, Types::GameSessionType

    def resolve(name:, desired_number_of_players:)
      game_session = GameSession.new({
                                       desired_number_of_players: desired_number_of_players,
                                       name: name,
                                       active_number_of_players: 0 })
      if game_session.save
        {
          game_session: game_session
        }
      else
        { errors: game_session.errors }
      end
    end
  end
end
