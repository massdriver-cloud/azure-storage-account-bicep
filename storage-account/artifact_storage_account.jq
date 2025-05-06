{
  "data":  {
    "infrastructure": {
      "ari": .outputs.storageAccountId,
      "endpoint": .outputs.storageAccountEndpoint
    },
    "security": {}
  },
  "specs": {
    "azure": {
      "region": .params.provisioner.region
    }
  }
}
