import {useQuery} from "@apollo/client";
import React from "react";
import {GET_PLAYERS, PlayerData} from "../graphql/player";
import {Selector} from "./selector";

function Player({name}: { name: string }) {
    return (<span>{name}</span>)
}

export function PlayerSelector() {
    const {loading, error, data} = useQuery<PlayerData>(GET_PLAYERS);

    return (
        <Selector
            displayName="players"
            loading={loading}
            error={JSON.stringify(error)}
            data={data?.players || []}
            component={Player}/>
    );
}