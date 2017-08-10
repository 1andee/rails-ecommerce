# Initialize app with cache_dir to bypass Heroku inhibit of /public/ dir
CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               =>  'AWS',
    :aws_access_key_id      =>  ENV["AWS_ACCESS_KEY_ID"],
    :aws_secret_access_key  =>  ENV["AWS_SECRET_ACCESS_KEY"]
  }
  config.fog_directory      = ENV["S3_BUCKET_NAME"]
  config.fog_public         = false
  config.storage            = :fog
end
