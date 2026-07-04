// Typed models for the MockApiService SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface Health {
  message?: string
  status?: string
}

export type HealthLoadMatch = Partial<Health>

export interface Post {
  body?: string
  created_at?: string
  id?: string
  title?: string
  user_id?: string
}

export interface PostLoadMatch {
  id: string
}

export type PostListMatch = Partial<Post>

export interface User {
  created_at?: string
  email?: string
  id?: string
  name?: string
  username?: string
}

export interface UserLoadMatch {
  id: string
}

export type UserListMatch = Partial<User>

export type UserCreateData = Partial<User>

export interface UserUpdateData {
  id: string
}

export interface UserRemoveMatch {
  id: string
}

