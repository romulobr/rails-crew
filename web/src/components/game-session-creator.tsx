import {useMutation} from "@apollo/client";
import {CREATE_GAME_SESSION, GET_GAME_SESSIONS} from "../graphql/game-sessions";
import {apolloClient} from "../graphql/apollo-client";

export function GameSessionCreator() {
    const [createSession, {data, loading, error}] = useMutation(CREATE_GAME_SESSION,{refetchQueries:[{query:GET_GAME_SESSIONS}]});
    return (
        <div>
            <button
                onClick={() => createSession({
                    variables: {name: "monkeys", desiredNumberOfPlayers: 4}
                })}>
                Create Game Session
                {JSON.stringify(data)}
                <div>
                    {JSON.stringify(error)}
                </div>
            </button>
        </div>)
}