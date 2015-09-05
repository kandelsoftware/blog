Restaurant::Application.configure do

# Settings specified here will take precedence over those in config/application.rb

  # Code is not reloaded between requests
  config.cache_classes = true


  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_assets = true

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = true

  # Generate digests for assets URLs
  config.assets.digest = true

config.action_mailer.default_url_options = { :host => 'http://himalayarestaurant.es' }
  # Show full error reports and disable caching
 config.consider_all_requests_local       = true
  config.action_controller.perform_caching = true
  config.action_mailer.delivery_method=:smtp
  config.action_mailer.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => 'himalayarestaurant.es',
    :user_name => "reservahimalaya@gmail.com",
    :password => "ramkandel33",
    :authentication => 'plain',
    :enable_starttls_auto => true

  }
  # Add the fonts path
  #config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

  # Precompile additional assets
  #config.assets.precompile += %w( .svg .eot .woff .ttf )
  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = true
  # Enable threaded mode
  # config.threadsafe!
  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  # config.active_record.auto_explain_threshold_in_seconds = 0.5
  end