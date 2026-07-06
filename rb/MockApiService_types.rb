# frozen_string_literal: true

# Typed models for the MockApiService SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# Health entity data model.
#
# @!attribute [rw] message
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
Health = Struct.new(
  :message,
  :status,
  keyword_init: true
)

# Request payload for Health#load.
#
# @!attribute [rw] message
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
HealthLoadMatch = Struct.new(
  :message,
  :status,
  keyword_init: true
)

# Post entity data model.
#
# @!attribute [rw] body
#   @return [String, nil]
#
# @!attribute [rw] created_at
#   @return [String, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] title
#   @return [String, nil]
#
# @!attribute [rw] user_id
#   @return [String, nil]
Post = Struct.new(
  :body,
  :created_at,
  :id,
  :title,
  :user_id,
  keyword_init: true
)

# Request payload for Post#load.
#
# @!attribute [rw] id
#   @return [String]
PostLoadMatch = Struct.new(
  :id,
  keyword_init: true
)

# Request payload for Post#list.
#
# @!attribute [rw] body
#   @return [String, nil]
#
# @!attribute [rw] created_at
#   @return [String, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] title
#   @return [String, nil]
#
# @!attribute [rw] user_id
#   @return [String, nil]
PostListMatch = Struct.new(
  :body,
  :created_at,
  :id,
  :title,
  :user_id,
  keyword_init: true
)

# User entity data model.
#
# @!attribute [rw] created_at
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] username
#   @return [String, nil]
User = Struct.new(
  :created_at,
  :email,
  :id,
  :name,
  :username,
  keyword_init: true
)

# Request payload for User#load.
#
# @!attribute [rw] id
#   @return [String]
UserLoadMatch = Struct.new(
  :id,
  keyword_init: true
)

# Request payload for User#list.
#
# @!attribute [rw] created_at
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] username
#   @return [String, nil]
UserListMatch = Struct.new(
  :created_at,
  :email,
  :id,
  :name,
  :username,
  keyword_init: true
)

# Request payload for User#create.
#
# @!attribute [rw] created_at
#   @return [String, nil]
#
# @!attribute [rw] email
#   @return [String, nil]
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] username
#   @return [String, nil]
UserCreateData = Struct.new(
  :created_at,
  :email,
  :id,
  :name,
  :username,
  keyword_init: true
)

# Request payload for User#update.
#
# @!attribute [rw] id
#   @return [String]
UserUpdateData = Struct.new(
  :id,
  keyword_init: true
)

# Request payload for User#remove.
#
# @!attribute [rw] id
#   @return [String]
UserRemoveMatch = Struct.new(
  :id,
  keyword_init: true
)

