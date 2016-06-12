require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TestProject
  class Application < Rails::Application


    # # Bower asset paths
    # root.join('vendor', 'assets', 'bower_components').to_s.tap do |bower_path|
    #   config.sass.load_paths << bower_path
    #   config.assets.paths << bower_path
    # end
    # # Precompile Bootstrap fonts
    # config.assets.precompile << %r(bootstrap-sass/assets/fonts/bootstrap/[\w-]+\.(?:eot|svg|ttf|woff2?)$)
    # # Minimum Sass number precision required by bootstrap-sass
    # ::Sass::Script::Value::Number.precision = [8, ::Sass::Script::Value::Number.precision].max

    # # Settings in config/environments/* take precedence over those specified here.
    # # Application configuration should go into files in config/initializers
    # # -- all .rb files in that directory are automatically loaded.

    # # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # # config.time_zone = 'Central Time (US & Canada)'

    # # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :"zh-CN"
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}')]

    # # Do not swallow errors in after_commit/after_rollback callbacks.
    # config.active_record.raise_in_transactional_callbacks = true



    config.autoload_paths += Dir["#{config.root}/app/models/**/"]
    config.time_zone = 'Beijing'
    config.encoding = "utf-8"
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    Rails.application.config.assets.precompile += %w( base.css index.css style.css about.css mark.css share.css learn.css)
    Rails.application.config.assets.precompile += %w( silder.js)

  end
end
