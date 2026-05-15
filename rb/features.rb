# MockApiService SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module MockApiServiceFeatures
  def self.make_feature(name)
    case name
    when "base"
      MockApiServiceBaseFeature.new
    when "test"
      MockApiServiceTestFeature.new
    else
      MockApiServiceBaseFeature.new
    end
  end
end
