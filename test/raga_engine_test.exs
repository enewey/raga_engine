defmodule RagaEngineTest do
  use ExUnit.Case
  doctest RagaEngine

  test "greets the world" do
    assert RagaEngine.hello() == :world
  end
end
