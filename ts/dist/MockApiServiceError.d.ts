import { Context } from './Context';
declare class MockApiServiceError extends Error {
    isMockApiServiceError: boolean;
    sdk: string;
    code: string;
    ctx: Context;
    status: number;
    get notFound(): boolean;
    constructor(code: string, msg: string, ctx: Context);
}
export { MockApiServiceError };
