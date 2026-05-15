package = "voxgig-sdk-mock-api-service"
version = "0.0-1"
source = {
  url = "git://github.com/voxgig-sdk/mock-api-service-sdk.git"
}
description = {
  summary = "MockApiService SDK for Lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.3",
  "dkjson >= 2.5",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["mock-api-service_sdk"] = "mock-api-service_sdk.lua",
    ["config"] = "config.lua",
    ["features"] = "features.lua",
  }
}
