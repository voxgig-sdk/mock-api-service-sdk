<?php
declare(strict_types=1);

// MockApiService SDK utility registration

require_once __DIR__ . '/../core/UtilityType.php';
require_once __DIR__ . '/Clean.php';
require_once __DIR__ . '/Done.php';
require_once __DIR__ . '/MakeError.php';
require_once __DIR__ . '/FeatureAdd.php';
require_once __DIR__ . '/FeatureHook.php';
require_once __DIR__ . '/FeatureInit.php';
require_once __DIR__ . '/Fetcher.php';
require_once __DIR__ . '/MakeFetchDef.php';
require_once __DIR__ . '/MakeContext.php';
require_once __DIR__ . '/MakeOptions.php';
require_once __DIR__ . '/MakeRequest.php';
require_once __DIR__ . '/MakeResponse.php';
require_once __DIR__ . '/MakeResult.php';
require_once __DIR__ . '/MakePoint.php';
require_once __DIR__ . '/MakeSpec.php';
require_once __DIR__ . '/MakeUrl.php';
require_once __DIR__ . '/Param.php';
require_once __DIR__ . '/PrepareAuth.php';
require_once __DIR__ . '/PrepareBody.php';
require_once __DIR__ . '/PrepareHeaders.php';
require_once __DIR__ . '/PrepareMethod.php';
require_once __DIR__ . '/PrepareParams.php';
require_once __DIR__ . '/PreparePath.php';
require_once __DIR__ . '/PrepareQuery.php';
require_once __DIR__ . '/ResultBasic.php';
require_once __DIR__ . '/ResultBody.php';
require_once __DIR__ . '/ResultHeaders.php';
require_once __DIR__ . '/TransformRequest.php';
require_once __DIR__ . '/TransformResponse.php';

MockApiServiceUtility::setRegistrar(function (MockApiServiceUtility $u): void {
    $u->clean = [MockApiServiceClean::class, 'call'];
    $u->done = [MockApiServiceDone::class, 'call'];
    $u->make_error = [MockApiServiceMakeError::class, 'call'];
    $u->feature_add = [MockApiServiceFeatureAdd::class, 'call'];
    $u->feature_hook = [MockApiServiceFeatureHook::class, 'call'];
    $u->feature_init = [MockApiServiceFeatureInit::class, 'call'];
    $u->fetcher = [MockApiServiceFetcher::class, 'call'];
    $u->make_fetch_def = [MockApiServiceMakeFetchDef::class, 'call'];
    $u->make_context = [MockApiServiceMakeContext::class, 'call'];
    $u->make_options = [MockApiServiceMakeOptions::class, 'call'];
    $u->make_request = [MockApiServiceMakeRequest::class, 'call'];
    $u->make_response = [MockApiServiceMakeResponse::class, 'call'];
    $u->make_result = [MockApiServiceMakeResult::class, 'call'];
    $u->make_point = [MockApiServiceMakePoint::class, 'call'];
    $u->make_spec = [MockApiServiceMakeSpec::class, 'call'];
    $u->make_url = [MockApiServiceMakeUrl::class, 'call'];
    $u->param = [MockApiServiceParam::class, 'call'];
    $u->prepare_auth = [MockApiServicePrepareAuth::class, 'call'];
    $u->prepare_body = [MockApiServicePrepareBody::class, 'call'];
    $u->prepare_headers = [MockApiServicePrepareHeaders::class, 'call'];
    $u->prepare_method = [MockApiServicePrepareMethod::class, 'call'];
    $u->prepare_params = [MockApiServicePrepareParams::class, 'call'];
    $u->prepare_path = [MockApiServicePreparePath::class, 'call'];
    $u->prepare_query = [MockApiServicePrepareQuery::class, 'call'];
    $u->result_basic = [MockApiServiceResultBasic::class, 'call'];
    $u->result_body = [MockApiServiceResultBody::class, 'call'];
    $u->result_headers = [MockApiServiceResultHeaders::class, 'call'];
    $u->transform_request = [MockApiServiceTransformRequest::class, 'call'];
    $u->transform_response = [MockApiServiceTransformResponse::class, 'call'];
});
