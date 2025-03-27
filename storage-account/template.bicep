param provisioner object
param storage object

resource devtestlocal0000 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: replace(md_metadata.name_prefix, '-', '')
  kind: storage.type //'StorageV2'
  location: provisioner.region //'EastUS'
  sku: {
    name: storage.sku //'PREMIUM_LRS'
  }
  tags: md_metadata.default_tags
}

output storageAccountId string = devtestlocal0000.id
output storageAccountEndpoint string = devtestlocal0000.properties.primaryEndpoints.blob

output artifactTwo object = {
  data:  {
    infrastructure: {
      ari: devtestlocal0000.id
      endpoint: devtestlocal0000.properties.primaryEndpoints.blob
    }
    security: {}
  }
  specs: {
    azure: {
      region: provisioner.region
    }
  }
}

// Auto-generated param declarations from massdriver.yaml
param azure_service_principal object
param md_metadata object
