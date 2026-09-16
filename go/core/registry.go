package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewRatelimitFeatureFunc func() Feature

var NewRetryFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewTimeoutFeatureFunc func() Feature

var NewHealthEntityFunc func(client *MockApiServiceSDK, entopts map[string]any) MockApiServiceEntity

var NewPostEntityFunc func(client *MockApiServiceSDK, entopts map[string]any) MockApiServiceEntity

var NewUserEntityFunc func(client *MockApiServiceSDK, entopts map[string]any) MockApiServiceEntity

