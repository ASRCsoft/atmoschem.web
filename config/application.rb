require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module D1
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    
    # # Don't care if the mailer can't send.
    # config.action_mailer.raise_delivery_errors = false

    # config.action_mailer.perform_caching = false

    config.action_mailer.delivery_method = :sendmail
    # Defaults to:
    # config.action_mailer.sendmail_settings = {
    #   location: '/usr/sbin/sendmail',
    #   arguments: '-i -t'
    # }
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    # config.action_mailer.default_options = {from: 'aqm_data_acess@atmoschem.asrc.cestm.albany.edu'}
  end
end
