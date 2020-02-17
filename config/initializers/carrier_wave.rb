if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIA37LPIHXYUJ3NEDU2'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['tomohiro-rails']
  end
end