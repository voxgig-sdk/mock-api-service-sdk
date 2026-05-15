<?php
declare(strict_types=1);

// MockApiService SDK utility: prepare_body

class MockApiServicePrepareBody
{
    public static function call(MockApiServiceContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
