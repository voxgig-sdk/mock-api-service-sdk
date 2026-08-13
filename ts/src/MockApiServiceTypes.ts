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

export interface HealthLoadMatch {
  message?: string
  status?: string
}

export interface Post {
  body?: string
  createdAt?: string
  id?: string
  title?: string
  userId?: string
}

export interface PostLoadMatch {
  id: string
}

export interface PostListMatch {
  body?: string
  createdAt?: string
  id?: string
  title?: string
  userId?: string
}

export interface User {
  createdAt?: string
  email?: string
  id?: string
  name?: string
  username?: string
}

export interface UserLoadMatch {
  id: string
}

export interface UserListMatch {
  createdAt?: string
  email?: string
  id?: string
  name?: string
  username?: string
}

export interface UserCreateData {
  createdAt?: string
  email?: string
  id?: string
  name?: string
  username?: string
}

export interface UserUpdateData {
  id: string
  createdAt?: string
  email?: string
  name?: string
  username?: string
}

export interface UserRemoveMatch {
  id: string
}

