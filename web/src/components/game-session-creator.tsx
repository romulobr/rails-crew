import {useMutation} from "@apollo/client";
import {CREATE_GAME_SESSION, GET_GAME_SESSIONS} from "../graphql/game-sessions";
import React, {useRef} from "react";

export function GameSessionCreator() {
    const [createSession, {
        error
    }] = useMutation(CREATE_GAME_SESSION, {refetchQueries: [{query: GET_GAME_SESSIONS}]});
    const nameRef = useRef<HTMLInputElement>(null);
    const numberOfPLayersRef = useRef<HTMLInputElement>(null);
    return (
        <div>
            <fieldset>
                <label>Session name:</label> <input ref={nameRef} name="sessionName" type="text"/>
                <label>Number of Players:</label> <input min={4} max={5} ref={numberOfPLayersRef} name="numberOfPlayers"
                                                         type="number"/>
                <button
                    onClick={
                        () => {
                            const name = nameRef?.current?.value;
                            ;const numberOfPlayers = Number(numberOfPLayersRef?.current?.value)
                            name && numberOfPlayers && createSession({
                                variables: {name: name, desiredNumberOfPlayers: numberOfPlayers}
                            })
                        }}>
                    Create Game Session
                    <div>
                        {JSON.stringify(error)}
                    </div>
                </button>
            </fieldset>
        </div>)
}