<?php
declare(strict_types=1);

// MockApiService SDK utility: feature_add

class MockApiServiceFeatureAdd
{
    public static function call(MockApiServiceContext $ctx, mixed $f): void
    {
        $ctx->client->features[] = $f;
    }
}
