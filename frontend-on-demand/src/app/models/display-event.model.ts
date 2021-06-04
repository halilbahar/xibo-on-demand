import { Session } from './session.model';

export interface DisplayEvent {
    session?: Session;
    type: 'CHANGE' | 'DELETE';
}