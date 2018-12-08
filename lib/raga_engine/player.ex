defmodule RagaEngine.Player do
  alias RagaEngine.{Player, Coordinate}

  @enforce_keys [ :id, :name, :coord, :radius ]
  defstruct [ :id, :name, :coord, :radius ]

  def new(name, %Coordinate{} = coord) when is_binary(name) do
    {:ok, %Player{id: UUID.uuid1(), name: name, coord: coord, radius: 1.0}}
  end

  def new(_, _) do
    {:error, :invalid_params}
  end

  def collides?(%Player{ coord: %{ x: x1, y: y1 }, radius: radius1}, %Coordinate{x: x2, y: y2}, radius2) do
    dist = :math.sqrt(:math.pow(y2-y1, 2) + :math.pow(x2-x1, 2))
    dist < radius1 + radius2
  end
end
