require "rom-repository"
require "foo/container"
require "foo/import"

Foo::Container.boot! :rom

module Foo
  class Repository < ROM::Repository::Root
    include Foo::Import.args["persistence.rom"]
  end
end
