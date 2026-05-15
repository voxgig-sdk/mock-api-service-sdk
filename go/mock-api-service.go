package voxgigmockapiservicesdk

import (
	"github.com/voxgig-sdk/mock-api-service-sdk/core"
	"github.com/voxgig-sdk/mock-api-service-sdk/entity"
	"github.com/voxgig-sdk/mock-api-service-sdk/feature"
	_ "github.com/voxgig-sdk/mock-api-service-sdk/utility"
)

// Type aliases preserve external API.
type MockApiServiceSDK = core.MockApiServiceSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type MockApiServiceEntity = core.MockApiServiceEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type MockApiServiceError = core.MockApiServiceError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewHealthEntityFunc = func(client *core.MockApiServiceSDK, entopts map[string]any) core.MockApiServiceEntity {
		return entity.NewHealthEntity(client, entopts)
	}
	core.NewPostEntityFunc = func(client *core.MockApiServiceSDK, entopts map[string]any) core.MockApiServiceEntity {
		return entity.NewPostEntity(client, entopts)
	}
	core.NewUserEntityFunc = func(client *core.MockApiServiceSDK, entopts map[string]any) core.MockApiServiceEntity {
		return entity.NewUserEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewMockApiServiceSDK = core.NewMockApiServiceSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
