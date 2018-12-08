defmodule RagaEngine.Coordinate do
  alias RagaEngine.Coordinate

  @enforce_keys [ :x, :y ]
  defstruct [ :x, :y ]

  @coord_range 1..100

  def new(x, y) when x in @coord_range and y in @coord_range do
    {:ok, %Coordinate{x: x, y: y}}
  end

  def new(_x, _y) do
    {:error, :invalid_range}
  end
end
