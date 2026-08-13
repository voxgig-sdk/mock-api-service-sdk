# MockApiService SDK utility: make_context

from projectname_sdk.core.context import MockApiServiceContext


def make_context_util(ctxmap, basectx):
    return MockApiServiceContext(ctxmap, basectx)
