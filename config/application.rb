require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BigGoal
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  
    config.action_mailer.smtp_settings = {
        address: "smtp.mailgun.org",
        port: 587, # ports 587 and 2525 are also supported with STARTTLS
        enable_starttls_auto: true, # detects and uses STARTTLS
        user_name: ENV['SMTP_USERNAME'],
        password: ENV['SMTP_PASSWORD'], # SMTP password is any valid API key
        domain: ENV['MG_DOMAIN'],
        authentication: 'login', # Mailgun supports 'plain' or 'login'
      }
  end
end
