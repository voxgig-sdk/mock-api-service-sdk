<?php
declare(strict_types=1);

// MockApiService SDK utility: result_headers

class MockApiServiceResultHeaders
{
    public static function call(MockApiServiceContext $ctx): ?MockApiServiceResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
