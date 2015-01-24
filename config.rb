# Assets directories
  set :css_dir, 'stylesheets'
  set :js_dir, 'javascripts'
  set :images_dir, 'images'

# Markdown
  set :markdown_engine, :redcarpet
  set :markdown, :fenced_code_blocks => true, :smartypants => true, :disable_indented_code_blocks => true, :prettify => true, :tables => true, :with_toc_data => true, :no_intra_emphasis => true

# Synax highlighter
  activate :syntax

configure :build do
  # Minify assets
  activate :minify_css
  activate :minify_javascript
end

# Deploy configuration
activate :s3_sync do |s3_sync|
  s3_sync.bucket                     = 'hackcentral-docs' # The name of the S3 bucket you are targetting. This is globally unique.
  s3_sync.region                     = 'us-east-1'     # The AWS region for your bucket.
  s3_sync.aws_access_key_id          = ENV['AWS_ACCESS_KEY_ID']
  s3_sync.aws_secret_access_key      = ENV['AWS_SECRET_ACCESS_KEY']
  s3_sync.delete                     = false # We delete stray files by default.
  s3_sync.after_build                = false # We do not chain after the build step by default.
  s3_sync.prefer_gzip                = true
  s3_sync.path_style                 = true
  s3_sync.reduced_redundancy_storage = false
  s3_sync.acl                        = 'public-read'
  s3_sync.encryption                 = false
  s3_sync.prefix                     = ''
  s3_sync.version_bucket             = false
end

