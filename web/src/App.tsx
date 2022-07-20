import React from 'react';
import './App.css';
import {PlayerSelector} from "./components/player-selector";
import {GameSessionSelector} from "./components/game-session-selector";
import {GameSessionCreator} from "./components/game-session-creator";

function App() {
    return (
        <div>
            <PlayerSelector/>
            <GameSessionSelector/>
            <GameSessionCreator/>
        </div>
    );
}

export default App;
