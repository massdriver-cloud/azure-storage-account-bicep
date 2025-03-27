{
  "data":  {
    "infrastructure": {
      "ari": .outputs.storageAccountId.value,
      "endpoint": .outputs.storageAccountEndpoint.value
    },
    "security": {}
  },
  "specs": {
    "azure": {
      "region": .params.provisioner.region
    }
  }
}
