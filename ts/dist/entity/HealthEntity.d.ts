import { MockApiServiceEntityBase } from '../MockApiServiceEntityBase';
import type { MockApiServiceSDK } from '../MockApiServiceSDK';
import type { Control } from '../types';
import type { Health, HealthLoadMatch } from '../MockApiServiceTypes';
declare class HealthEntity extends MockApiServiceEntityBase<Health> {
    constructor(client: MockApiServiceSDK, entopts: any);
    make(this: HealthEntity): HealthEntity;
    load(this: any, reqmatch?: HealthLoadMatch, ctrl?: Control): Promise<HealthEntity>;
}
export { HealthEntity };
