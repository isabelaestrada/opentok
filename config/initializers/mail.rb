ActionMailer::Base.default from: ENV['EMAIL_SENDER_NAME']
ActionMailer::Base.smtp_settings = {
  enable_starttls_auto: true,
  openssl_verify_mode: 'none',    
  address: ENV['SMTP_ADDRESS'],
  port: ENV['SMTP_PORT'],
  domain: ENV['SMTP_DOMAIN'],
  authentication: :login,
  user_name: ENV['EMAIL_ADDRESS'],
  password: ENV['EMAIL_PASSWORD']
}