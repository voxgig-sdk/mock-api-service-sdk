# MockApiService SDK utility: make_context
require_relative '../core/context'
module MockApiServiceUtilities
  MakeContext = ->(ctxmap, basectx) {
    MockApiServiceContext.new(ctxmap, basectx)
  }
end
