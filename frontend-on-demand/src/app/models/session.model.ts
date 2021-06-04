export interface Session {
    displayId: number;
    createdAt: string;
    state: 'INITIAL' | 'STARTED' | 'FINISHED'
}