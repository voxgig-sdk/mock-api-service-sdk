<?php
declare(strict_types=1);

// MockApiService SDK utility: result_body

class MockApiServiceResultBody
{
    public static function call(MockApiServiceContext $ctx): ?MockApiServiceResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
