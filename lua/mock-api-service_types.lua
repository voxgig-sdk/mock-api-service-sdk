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
---@field created_at? string
---@field id? string
---@field title? string
---@field user_id? string

---@class PostLoadMatch
---@field id string

---@class PostListMatch
---@field body? string
---@field created_at? string
---@field id? string
---@field title? string
---@field user_id? string

---@class User
---@field created_at? string
---@field email? string
---@field id? string
---@field name? string
---@field username? string

---@class UserLoadMatch
---@field id string

---@class UserListMatch
---@field created_at? string
---@field email? string
---@field id? string
---@field name? string
---@field username? string

---@class UserCreateData
---@field created_at? string
---@field email? string
---@field id? string
---@field name? string
---@field username? string

---@class UserUpdateData
---@field id string

---@class UserRemoveMatch
---@field id string

local M = {}

return M
