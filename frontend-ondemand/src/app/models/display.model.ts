import { Session } from "./session.model";

export interface Display {
    displayId: number;
    display: string;
    loggedIn: number;
    session?: Session;
}