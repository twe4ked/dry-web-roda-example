require "dry-configurable"
require "dry-transaction"

module Foo
  class Transactions
    extend Dry::Configurable

    attr_reader :options

    setting :container
    setting :options, {}

    def self.define(&block)
      yield(new(options))
    end

    def self.options
      {container: config.container}.merge(config.options)
    end

    def initialize(options)
      @options = options
    end

    def container
      options[:container]
    end

    def define(name, &block)
      container.register(name, Dry.Transaction(options, &block))
    end
  end
end
