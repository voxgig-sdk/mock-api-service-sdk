# MockApiService SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module MockApiServiceFeatures
  def self.make_feature(name)
    case name
    when "base"
      MockApiServiceBaseFeature.new
    when "ratelimit"
      MockApiServiceRatelimitFeature.new
    when "retry"
      MockApiServiceRetryFeature.new
    when "test"
      MockApiServiceTestFeature.new
    when "timeout"
      MockApiServiceTimeoutFeature.new
    else
      MockApiServiceBaseFeature.new
    end
  end
end
