# ProjectName SDK exists test

import pytest
from mockapiservice_sdk import MockApiServiceSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = MockApiServiceSDK.test(None, None)
        assert testsdk is not None
