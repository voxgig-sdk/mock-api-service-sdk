<?php
declare(strict_types=1);

// MockApiService SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class MockApiServiceMakeContext
{
    public static function call(array $ctxmap, ?MockApiServiceContext $basectx): MockApiServiceContext
    {
        return new MockApiServiceContext($ctxmap, $basectx);
    }
}
