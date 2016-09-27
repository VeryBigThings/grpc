defmodule Helloworld.Greeter.Server do
  use GRPC.Server, service: Helloworld.Greeter.Service

  def say_hello(request) do
    Helloworld.HelloReply.new(message: "Hello #{request.name}")
  end
end
