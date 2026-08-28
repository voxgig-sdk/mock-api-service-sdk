-- Typed models for the MockApiService SDK (LuaLS annotations).
--
-- GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
-- params (op.<name>.points[].args.params[]). Field/param types come from the
-- canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
-- @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
-- edit by hand.

---@class Health
---@field message? string
---@field status? string

---@class HealthLoadMatch
---@field message? string
---@field status? string

---@class Post
---@field body? string
---@field createdAt? string
---@field id? string
---@field title? string
---@field userId? string

---@class PostLoadMatch
---@field id string

---@class PostListMatch
---@field limit? number
---@field page? number

---@class User
---@field createdAt? string
---@field email? string
---@field id? string
---@field name? string
---@field username? string

---@class UserLoadMatch
---@field id string

---@class UserListMatch
---@field limit? number
---@field page? number

---@class UserCreateData
---@field createdAt? string
---@field email? string
---@field id? string
---@field name? string
---@field username? string

---@class UserUpdateData
---@field id string
---@field createdAt? string
---@field email? string
---@field name? string
---@field username? string

---@class UserRemoveMatch
---@field id string

local M = {}

return M
