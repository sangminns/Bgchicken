Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.
  
  # #gmail만 되는거
  config.action_mailer.default_url_options = { :host => 'https://bg-chicken-rlfgus777.c9users.io'}
  
  config.action_mailer.delivery_method = :mailgun
  config.action_mailer.mailgun_settings = {
          api_key: '',
          domain: ''
  }
  
  # 테스트 ㅎㅎ
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.smtp_settings = {
  #   :authentication => :plain,
  #   :address => "smtp.mailgun.org",
  #   :api_key => '',
  #   :port => 465,
  #   :domain => "",
  #   :user_name => "",
  #   :password => ""
  # }
  # #  테스트1
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.smtp_settings = { 
  #   :authentication => :plain,
  #   :address => "smtp.mailgun.org",
  #   :port => 587,
  #   # 465port  / naver
  #   :domain => "sandbox93ac32d21a89c992f...d103.mailgun.org",
  #   :user_name => "postmaster@sandbox93ac32d21a89c992f...d103.mailgun.org",
  #   :password => "4321098765431abcdef12345.."
  # }
  
  # #테스트 2
  # config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.perform_deliveries = true

  # ActionMailer::Base.smtp_settings = { 
  #   :address => 'smtp.mailgun.org',
  #   :port => 587,
  #   :user_name => '.mailgun.org',
  #   :password => '(mailgun password)',
  #   :domain => '.mailgun.org',
  #   :authentication => :plain
  # }
  
  #테스트 3
  # config.action_mailer.default_url_options = { :host => 'https://bg-chicken-rlfgus777.c9users.io'}
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.perform_deliveries = true

  # config.action_mailer.smtp_settings = {
  # :address => 'smtp.mailgun.org',
  # :port => 587,
  # :api_key => '',
  # :user_name => 'postmaster@sandbox3ed8de9510c845c68bf0d867a8f25394.mailgun.org',
  # :domain => '',
  # :authentication => :plain,
  # :enable_starttls_auto => true
  # }

  
  
  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end
