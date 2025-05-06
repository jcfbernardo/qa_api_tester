defmodule QaApiTesterTest do
  use ExUnit.Case
  doctest QaApiTester

  test "greets the world" do
    assert QaApiTester.hello() == :world
  end
end
