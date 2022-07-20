import {gql} from "@apollo/client";
import {databaseObject} from "./base";


export interface Player extends databaseObject {
    name: string;
}

export interface PlayerData {
    players: Player[];
}

export const GET_PLAYERS = gql`
    query GetPlayers {
        players{id,name}
    }
`;