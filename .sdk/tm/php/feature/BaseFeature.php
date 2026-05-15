<?php
declare(strict_types=1);

// MockApiService SDK base feature

class MockApiServiceBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(MockApiServiceContext $ctx, array $options): void {}
    public function PostConstruct(MockApiServiceContext $ctx): void {}
    public function PostConstructEntity(MockApiServiceContext $ctx): void {}
    public function SetData(MockApiServiceContext $ctx): void {}
    public function GetData(MockApiServiceContext $ctx): void {}
    public function GetMatch(MockApiServiceContext $ctx): void {}
    public function SetMatch(MockApiServiceContext $ctx): void {}
    public function PrePoint(MockApiServiceContext $ctx): void {}
    public function PreSpec(MockApiServiceContext $ctx): void {}
    public function PreRequest(MockApiServiceContext $ctx): void {}
    public function PreResponse(MockApiServiceContext $ctx): void {}
    public function PreResult(MockApiServiceContext $ctx): void {}
    public function PreDone(MockApiServiceContext $ctx): void {}
    public function PreUnexpected(MockApiServiceContext $ctx): void {}
}
