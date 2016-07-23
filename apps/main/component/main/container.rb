require "pathname"
require "dry/web/container"

module Main
  class Container < Dry::Web::Container
    require root.join("component/foo/container")
    import Foo::Container

    configure do |config|
      config.root = Pathname(__FILE__).join("../..").realpath.dirname.freeze

      config.auto_register = %w[
        lib/main
      ]
    end

    load_paths! "lib", "component"
  end
end
