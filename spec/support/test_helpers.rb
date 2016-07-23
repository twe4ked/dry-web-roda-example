module TestHelpers
  module_function

  def app
    Foo::Application.app
  end

  def rom
    Foo::Container["persistence.rom"]
  end

  def db_connection
    rom.gateways[:default].connection
  end
end
