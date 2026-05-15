<?php
declare(strict_types=1);

// MockApiService SDK utility: clean

class MockApiServiceClean
{
    public static function call(MockApiServiceContext $ctx, mixed $val): mixed
    {
        return $val;
    }
}
