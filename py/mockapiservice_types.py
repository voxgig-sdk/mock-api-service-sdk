# Typed models for the MockApiService SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.

from __future__ import annotations

from dataclasses import dataclass
from typing import Optional, Any


@dataclass
class Health:
    message: Optional[str] = None
    status: Optional[str] = None


@dataclass
class HealthLoadMatch:
    message: Optional[str] = None
    status: Optional[str] = None


@dataclass
class Post:
    body: Optional[str] = None
    created_at: Optional[str] = None
    id: Optional[str] = None
    title: Optional[str] = None
    user_id: Optional[str] = None


@dataclass
class PostLoadMatch:
    id: str


@dataclass
class PostListMatch:
    body: Optional[str] = None
    created_at: Optional[str] = None
    id: Optional[str] = None
    title: Optional[str] = None
    user_id: Optional[str] = None


@dataclass
class User:
    created_at: Optional[str] = None
    email: Optional[str] = None
    id: Optional[str] = None
    name: Optional[str] = None
    username: Optional[str] = None


@dataclass
class UserLoadMatch:
    id: str


@dataclass
class UserListMatch:
    created_at: Optional[str] = None
    email: Optional[str] = None
    id: Optional[str] = None
    name: Optional[str] = None
    username: Optional[str] = None


@dataclass
class UserCreateData:
    created_at: Optional[str] = None
    email: Optional[str] = None
    id: Optional[str] = None
    name: Optional[str] = None
    username: Optional[str] = None


@dataclass
class UserUpdateData:
    id: str


@dataclass
class UserRemoveMatch:
    id: str

