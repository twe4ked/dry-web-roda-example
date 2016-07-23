require "sequel"
require "rom"

Sequel.database_timezone = :utc
Sequel.application_timezone = :local

Foo::Container.namespace "persistence" do |container|
  config = ROM::Configuration.new(:sql, container.settings.database_url, extensions: [:error_sql])

  container.register "config", config

  container.finalize :rom do
    config.auto_registration container.root.join("lib/persistence")
    container.register "rom", ROM.container(config)
  end
end
