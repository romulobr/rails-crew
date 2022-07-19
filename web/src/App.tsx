import React from 'react';
import logo from './logo.svg';
import './App.css';
import {useQuery, gql} from '@apollo/client';
import {PlayerData} from "./graphql/api-types";
import {GET_PLAYERS} from "./graphql/queries";

function App() {
    const {loading, error, data} = useQuery<PlayerData>(GET_PLAYERS);
    return (
        <div className="App">
            {data && data.players.map(({id, name}) => (
                <div>
                    <pre>
                    {name+loading+error}
                    </pre>
                </div>
            ))}
        </div>
    );
}

export default App;
