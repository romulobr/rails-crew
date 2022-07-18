import React from 'react';
import logo from './logo.svg';
import './App.css';
import {useQuery, gql} from '@apollo/client';
import {PlayerData} from "./graphql/api-types";

const GET_PLAYERS = gql`
    query GetPlayers {
        players{id,name}
    }
`;

function App() {
    const {loading, error, data} = useQuery<PlayerData>(GET_PLAYERS);
    return (
        <div className="App">
            {data && data.players.map(({id, name}) => (
                <div>
                    <pre>
                    {name}
                    </pre>
                </div>
            ))}
        </div>
    );
}

export default App;
