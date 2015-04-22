ActiveAdmin::Editor.configure do |config|
  if Rails.env.production?
    config.s3_bucket = Rails.application.secrets.aws_bucket_name
    config.aws_access_key_id = Rails.application.secrets.aws_access_key
    config.aws_access_secret = Rails.application.secrets.aws_secret_access_key
    config.storage_dir = 'uploads/active_admin_editor/'
  end
end
