<?php
declare(strict_types=1);

// MockApiService SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class MockApiServiceFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new MockApiServiceBaseFeature();
            case "test":
                return new MockApiServiceTestFeature();
            default:
                return new MockApiServiceBaseFeature();
        }
    }
}
