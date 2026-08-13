# MockApiService SDK feature factory

from mockapiservice_sdk.feature.base_feature import MockApiServiceBaseFeature
from mockapiservice_sdk.feature.test_feature import MockApiServiceTestFeature


def _make_feature(name):
    features = {
        "base": lambda: MockApiServiceBaseFeature(),
        "test": lambda: MockApiServiceTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
