require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    # access_key_id: Rails.application.credentials.dig(:aws, :access_key_id),
    # secret_access_key: Rails.application.credentials.dig(:aws, :secret_access_key),
    
    region: 'ap-northeast-1'
  }

  config.fog_directory  = 'broomer'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/broomer'
end