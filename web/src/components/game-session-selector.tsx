import {useQuery} from "@apollo/client";
import React from "react";
import {Selector} from "./selector";
import {GameSessionData, GET_GAME_SESSIONS} from "../graphql/game-sessions";

function GameSession({id, name}: { id: number, name: string }) {
    return (
        <span>{name}</span>
    )
}

export function GameSessionSelector() {
    const {loading, error, data} = useQuery<GameSessionData>(GET_GAME_SESSIONS);

    return (
        <Selector
            displayName="game sessions"
            loading={loading}
            error={JSON.stringify(error)}
            data={data?.gameSessions || []}
            component={GameSession}/>
    );
}