defmodule PlayerTest do
  use ExUnit.Case, async: true
  alias RagaEngine.{Coordinate, Player}

  describe "Player.collides?/2" do
    setup do
      {:ok, coord} = Coordinate.new(1,2)
      {:ok, player} = Player.new("tester", coord)
      %{player: player}
    end

    test "Reports a collision when coordinate is within range of a Player", %{player: player} do
      {:ok, coord} = Coordinate.new(1,3)
      assert Player.collides?(player, coord, 1.0) == true
    end

    test "Does not report a collision when coordinate is outside range of a Player", %{player: player} do
      {:ok, coord} = Coordinate.new(1,4)
      assert Player.collides?(player, coord, 1.0) == false
    end
  end
end
