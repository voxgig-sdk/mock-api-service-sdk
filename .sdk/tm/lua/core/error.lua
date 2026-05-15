-- MockApiService SDK error

local MockApiServiceError = {}
MockApiServiceError.__index = MockApiServiceError


function MockApiServiceError.new(code, msg, ctx)
  local self = setmetatable({}, MockApiServiceError)
  self.is_sdk_error = true
  self.sdk = "MockApiService"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function MockApiServiceError:error()
  return self.msg
end


function MockApiServiceError:__tostring()
  return self.msg
end


return MockApiServiceError
