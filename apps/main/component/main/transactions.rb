require "dry-transaction"
require "foo/transactions"
require "main/container"
require "main/import"

module Main
  class Transactions < Foo::Transactions
    configure do |config|
      config.container = Main::Container
    end
  end
end
