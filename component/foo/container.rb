require "dry/web/umbrella"
require_relative "settings"

module Foo
  class Container < Dry::Web::Umbrella
    configure do
      config.name = :core
      config.settings_loader = Foo::Settings
    end

    load_paths! "lib", "component"

    def self.settings
      config.settings
    end
  end
end
