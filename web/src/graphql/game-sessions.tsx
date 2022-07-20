import {gql} from "@apollo/client";
import {databaseObject} from "./base";

export interface GameSession extends databaseObject {
    name: string;
    created_at: string;
    desired_number_of_players: number;
    active_number_of_players: number;
}

export interface GameSessionData {
    gameSessions: GameSession[];
}

export const GET_GAME_SESSIONS = gql`
    query GetGameSessions {
        gameSessions{id,name,createdAt}
    }
`;

export const CREATE_GAME_SESSION = gql`
    mutation CreateGameSession($name:String!, $desiredNumberOfPlayers: Int!) {
        createGameSession(input:{name: $name, desiredNumberOfPlayers: $desiredNumberOfPlayers}){
            gameSession{id,name,createdAt}
        }
    }
`;