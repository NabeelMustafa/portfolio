CarrierWave.configure do |config|
  config.azure_storage_account_name = ENV.fetch('NAME')
  config.azure_storage_access_key = ENV.fetch('KEY')
  config.azure_container = ENV.fetch('CONTAINOR')
end