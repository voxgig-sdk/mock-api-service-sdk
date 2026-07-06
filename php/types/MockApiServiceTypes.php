<?php
declare(strict_types=1);

// Typed models for the MockApiService SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** Health entity data model. */
class Health
{
    public ?string $message = null;
    public ?string $status = null;
}

/** Request payload for Health#load. */
class HealthLoadMatch
{
    public ?string $message = null;
    public ?string $status = null;
}

/** Post entity data model. */
class Post
{
    public ?string $body = null;
    public ?string $created_at = null;
    public ?string $id = null;
    public ?string $title = null;
    public ?string $user_id = null;
}

/** Request payload for Post#load. */
class PostLoadMatch
{
    public string $id;
}

/** Request payload for Post#list. */
class PostListMatch
{
    public ?string $body = null;
    public ?string $created_at = null;
    public ?string $id = null;
    public ?string $title = null;
    public ?string $user_id = null;
}

/** User entity data model. */
class User
{
    public ?string $created_at = null;
    public ?string $email = null;
    public ?string $id = null;
    public ?string $name = null;
    public ?string $username = null;
}

/** Request payload for User#load. */
class UserLoadMatch
{
    public string $id;
}

/** Request payload for User#list. */
class UserListMatch
{
    public ?string $created_at = null;
    public ?string $email = null;
    public ?string $id = null;
    public ?string $name = null;
    public ?string $username = null;
}

/** Request payload for User#create. */
class UserCreateData
{
    public ?string $created_at = null;
    public ?string $email = null;
    public ?string $id = null;
    public ?string $name = null;
    public ?string $username = null;
}

/** Request payload for User#update. */
class UserUpdateData
{
    public string $id;
}

/** Request payload for User#remove. */
class UserRemoveMatch
{
    public string $id;
}

