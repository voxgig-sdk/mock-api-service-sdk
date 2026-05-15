# MockApiService SDK utility: feature_add
module MockApiServiceUtilities
  FeatureAdd = ->(ctx, f) {
    ctx.client.features << f
  }
end
