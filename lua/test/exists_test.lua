-- ProjectName SDK exists test

local sdk = require("mock-api-service_sdk")

describe("MockApiServiceSDK", function()
  it("should create test SDK", function()
    local testsdk = sdk.test(nil, nil)
    assert.is_not_nil(testsdk)
  end)
end)
