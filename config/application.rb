require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module BloggerBGozde666
  class Application < Rails::Application
    config.load_defaults 8.0

    config.autoload_lib(ignore: %w[assets tasks])


    config.i18n.load_path += Dir[Rails.root.join('config/locales/**/*.yml')]
    config.i18n.default_locale = :tr
  end
end