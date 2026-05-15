# MockApiService SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

MockApiServiceUtility.registrar = ->(u) {
  u.clean = MockApiServiceUtilities::Clean
  u.done = MockApiServiceUtilities::Done
  u.make_error = MockApiServiceUtilities::MakeError
  u.feature_add = MockApiServiceUtilities::FeatureAdd
  u.feature_hook = MockApiServiceUtilities::FeatureHook
  u.feature_init = MockApiServiceUtilities::FeatureInit
  u.fetcher = MockApiServiceUtilities::Fetcher
  u.make_fetch_def = MockApiServiceUtilities::MakeFetchDef
  u.make_context = MockApiServiceUtilities::MakeContext
  u.make_options = MockApiServiceUtilities::MakeOptions
  u.make_request = MockApiServiceUtilities::MakeRequest
  u.make_response = MockApiServiceUtilities::MakeResponse
  u.make_result = MockApiServiceUtilities::MakeResult
  u.make_point = MockApiServiceUtilities::MakePoint
  u.make_spec = MockApiServiceUtilities::MakeSpec
  u.make_url = MockApiServiceUtilities::MakeUrl
  u.param = MockApiServiceUtilities::Param
  u.prepare_auth = MockApiServiceUtilities::PrepareAuth
  u.prepare_body = MockApiServiceUtilities::PrepareBody
  u.prepare_headers = MockApiServiceUtilities::PrepareHeaders
  u.prepare_method = MockApiServiceUtilities::PrepareMethod
  u.prepare_params = MockApiServiceUtilities::PrepareParams
  u.prepare_path = MockApiServiceUtilities::PreparePath
  u.prepare_query = MockApiServiceUtilities::PrepareQuery
  u.result_basic = MockApiServiceUtilities::ResultBasic
  u.result_body = MockApiServiceUtilities::ResultBody
  u.result_headers = MockApiServiceUtilities::ResultHeaders
  u.transform_request = MockApiServiceUtilities::TransformRequest
  u.transform_response = MockApiServiceUtilities::TransformResponse
}
