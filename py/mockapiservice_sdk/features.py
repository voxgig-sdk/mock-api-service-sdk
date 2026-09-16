# MockApiService SDK feature factory

from mockapiservice_sdk.feature.base_feature import MockApiServiceBaseFeature
from mockapiservice_sdk.feature.ratelimit_feature import MockApiServiceRatelimitFeature
from mockapiservice_sdk.feature.retry_feature import MockApiServiceRetryFeature
from mockapiservice_sdk.feature.test_feature import MockApiServiceTestFeature
from mockapiservice_sdk.feature.timeout_feature import MockApiServiceTimeoutFeature


_FEATURES = {
    "base": lambda: MockApiServiceBaseFeature(),
    "ratelimit": lambda: MockApiServiceRatelimitFeature(),
    "retry": lambda: MockApiServiceRetryFeature(),
    "test": lambda: MockApiServiceTestFeature(),
    "timeout": lambda: MockApiServiceTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES
