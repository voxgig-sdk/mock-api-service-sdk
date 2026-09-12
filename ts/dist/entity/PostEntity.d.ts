import { MockApiServiceEntityBase } from '../MockApiServiceEntityBase';
import type { MockApiServiceSDK } from '../MockApiServiceSDK';
import type { Control } from '../types';
import type { Post, PostLoadMatch, PostListMatch } from '../MockApiServiceTypes';
declare class PostEntity extends MockApiServiceEntityBase<Post> {
    constructor(client: MockApiServiceSDK, entopts: any);
    make(this: PostEntity): PostEntity;
    load(this: any, reqmatch?: PostLoadMatch, ctrl?: Control): Promise<PostEntity>;
    list(this: any, reqmatch?: PostListMatch, ctrl?: Control): Promise<PostEntity[]>;
}
export { PostEntity };
