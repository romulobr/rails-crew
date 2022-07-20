import React from "react";
import {databaseObject} from "../graphql/base";

export function Selector({
                             displayName,
                             loading,
                             error,
                             data,
                             component
                         }: {
    displayName: string,
    loading: boolean,
    error: string,
    data: databaseObject[],
    component: React.FunctionComponent<any>
}) {
    return (
        <ul>
            {data.length > 0 ? data.map((data) => (
                <li key={data.id}>
                    {component(data)}
                </li>
            )) : `no ${displayName} found`}
        </ul>
    );
}