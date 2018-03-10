ActionMailer::Base.default from: "\"#{ENV['EMAIL_SENDER_NAME']}\" <#{ENV['EMAIL_ADDRESS']}>"
ActionMailer::Base.smtp_settings = {
  enable_starttls_auto: ENV['ENABLE_STARTTLS_AUTO'],
  openssl_verify_mode: ENV['OPENSSL_VERIFY_MODE'],    
  address: ENV['SMTP_ADDRESS'],
  port: ENV['SMTP_PORT'],
  domain: "#{ENV['SMTP_DOMAIN']}}",
  authentication: ENV['AUTHENTICATION'],
  user_name: ENV['EMAIL_ADDRESS'],
  password: ENV['EMAIL_PASSWORD']
}