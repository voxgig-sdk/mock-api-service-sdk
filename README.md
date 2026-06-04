# MockApiService SDK

Free mock API for simulating HTTP requests and responses while building and testing client apps

> TypeScript, Python, PHP, Golang, Ruby, Lua SDKs, a CLI, an interactive REPL, and an MCP server for AI agents — all generated from one OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).

## About Mock API Service

[DummyAPI](https://dummyapi.online/) is a free mock API service that provides placeholder HTTP endpoints so developers can prototype, demo, and test client applications without standing up a real backend. It is intended for development and learning rather than production traffic.

The SDK groups operations under three entities derived from the service's OpenAPI definition: `health`, `post`, and `user`. These cover the typical mock-data shapes (user records and post records) plus a service health probe.

Because this is a public mock service, treat any returned data as fictitious and do not rely on persistence or strict SLAs. Check the [docs](https://docs.dummyapi.online/) for the current set of endpoints and request shapes before integrating.

## Try it

**TypeScript**
```bash
npm install mock-api-service
```

**Python**
```bash
pip install mock-api-service-sdk
```

**PHP**
```bash
composer require voxgig/mock-api-service-sdk
```

**Golang**
```bash
go get github.com/voxgig-sdk/mock-api-service-sdk/go
```

**Ruby**
```bash
gem install mock-api-service-sdk
```

**Lua**
```bash
luarocks install mock-api-service-sdk
```

## 30-second quickstart

### TypeScript

```ts
import { MockApiServiceSDK } from 'mock-api-service'

const client = new MockApiServiceSDK({})

```

See the [TypeScript README](ts/README.md) for the
full guide, or scroll down for the same example in other languages.

## What's in the box

| Surface | Use it for | Path |
| --- | --- | --- |
| **SDK** (TypeScript, Python, PHP, Golang, Ruby, Lua) | App integration | `ts/` `py/` `php/` `go/` `rb/` `lua/` |
| **CLI** | Scripts, CI, ops, one-off API calls | `go-cli/` |
| **MCP server** | AI agents (Claude, Cursor, Cline) | `go-mcp/` |

## Use it from an AI agent (MCP)

The generated MCP server exposes every operation in this SDK as an
[MCP](https://modelcontextprotocol.io) tool that Claude, Cursor or Cline
can call directly. Build and register it:

```bash
cd go-mcp && go build -o mock-api-service-mcp .
```

Then add it to your agent's MCP config (Claude Desktop, Cursor, etc.):

```json
{
  "mcpServers": {
    "mock-api-service": {
      "command": "/abs/path/to/mock-api-service-mcp"
    }
  }
}
```

## Entities

The API exposes 3 entities:

| Entity | Description | API path |
| --- | --- | --- |
| **Health** | Service health probe used to verify that the mock API is reachable. | `/ping` |
| **Post** | Mock blog/social post records returned for prototyping list and detail views. | `/posts` |
| **User** | Mock user records suitable for populating profiles, auth screens, and directory UIs. | `/users` |

Each entity supports the following operations where available: **load**,
**list**, **create**, **update**, and **remove**.

## Quickstart in other languages

### Python

```python
from mockapiservice_sdk import MockApiServiceSDK

client = MockApiServiceSDK({})


# Load a specific health
health, err = client.Health(None).load(
    {"id": "example_id"}, None
)
```

### PHP

```php
<?php
require_once 'mockapiservice_sdk.php';

$client = new MockApiServiceSDK([]);


// Load a specific health
[$health, $err] = $client->Health(null)->load(
    ["id" => "example_id"], null
);
```

### Golang

```go
import sdk "github.com/voxgig-sdk/mock-api-service-sdk/go"

client := sdk.NewMockApiServiceSDK(map[string]any{})

```

### Ruby

```ruby
require_relative "MockApiService_sdk"

client = MockApiServiceSDK.new({})


# Load a specific health
health, err = client.Health(nil).load(
  { "id" => "example_id" }, nil
)
```

### Lua

```lua
local sdk = require("mock-api-service_sdk")

local client = sdk.new({})


-- Load a specific health
local health, err = client:Health(nil):load(
  { id = "example_id" }, nil
)
```

## Unit testing in offline mode

Every SDK ships a test mode that swaps the HTTP transport for an
in-memory mock, so unit tests run offline.

### TypeScript

```ts
const client = MockApiServiceSDK.test()
const result = await client.Health().load({ id: 'test01' })
// result.ok === true, result.data contains mock data
```

### Python

```python
client = MockApiServiceSDK.test(None, None)
result, err = client.Health(None).load(
    {"id": "test01"}, None
)
```

### PHP

```php
$client = MockApiServiceSDK::test(null, null);
[$result, $err] = $client->Health(null)->load(
    ["id" => "test01"], null
);
```

### Golang

```go
client := sdk.TestSDK(nil, nil)
result, err := client.Health(nil).Load(
    map[string]any{"id": "test01"}, nil,
)
```

### Ruby

```ruby
client = MockApiServiceSDK.test(nil, nil)
result, err = client.Health(nil).load(
  { "id" => "test01" }, nil
)
```

### Lua

```lua
local client = sdk.test(nil, nil)
local result, err = client:Health(nil):load(
  { id = "test01" }, nil
)
```

## How it works

Every SDK call runs the same five-stage pipeline:

1. **Point** — resolve the API endpoint from the operation definition.
2. **Spec** — build the HTTP specification (URL, method, headers, body).
3. **Request** — send the HTTP request.
4. **Response** — receive and parse the response.
5. **Result** — extract the result data for the caller.

A feature hook fires at each stage (e.g. `PrePoint`, `PreSpec`,
`PreRequest`), so features can inspect or modify the pipeline without
forking the SDK.

### Features

| Feature | Purpose |
| --- | --- |
| **TestFeature** | In-memory mock transport for testing without a live server |

Pass custom features via the `extend` option at construction time.

### Direct and Prepare

For endpoints the entity model doesn't cover, use the low-level methods:

- **`direct(fetchargs)`** — build and send an HTTP request in one step.
- **`prepare(fetchargs)`** — build the request without sending it.

Both accept a map with `path`, `method`, `params`, `query`,
`headers`, and `body`. See the [How-to guides](#how-to-guides) below.

## How-to guides

### Make a direct API call

When the entity interface does not cover an endpoint, use `direct`:

**TypeScript:**
```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example' },
})
console.log(result.data)
```

**Python:**
```python
result, err = client.direct({
    "path": "/api/resource/{id}",
    "method": "GET",
    "params": {"id": "example"},
})
```

**PHP:**
```php
[$result, $err] = $client->direct([
    "path" => "/api/resource/{id}",
    "method" => "GET",
    "params" => ["id" => "example"],
]);
```

**Go:**
```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example"},
})
```

**Ruby:**
```ruby
result, err = client.direct({
  "path" => "/api/resource/{id}",
  "method" => "GET",
  "params" => { "id" => "example" },
})
```

**Lua:**
```lua
local result, err = client:direct({
  path = "/api/resource/{id}",
  method = "GET",
  params = { id = "example" },
})
```

## Per-language documentation

- [TypeScript](ts/README.md)
- [Python](py/README.md)
- [PHP](php/README.md)
- [Golang](go/README.md)
- [Ruby](rb/README.md)
- [Lua](lua/README.md)

## Using the Mock API Service

- Upstream: [https://dummyapi.online/](https://dummyapi.online/)
- API docs: [https://docs.dummyapi.online/](https://docs.dummyapi.online/)

---

Generated from the Mock API Service OpenAPI spec by [@voxgig/sdkgen](https://github.com/voxgig/sdkgen).
