module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    argument_class Types::BaseArgument
    field_class Types::BaseField
    input_object_class Types::BaseInputObject
    object_class Types::BaseObject
  end

  class CreateGameSession < BaseMutation
    argument :desired_number_of_players, integer

    field :GameSession

    def resolve(body:, desired_number_of_players:)

    end
  end
end
