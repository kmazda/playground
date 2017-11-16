defmodule Player.Player do
  use Player.Web, :model

  schema "players" do
    field :name, :string
    field :team, :string
    field :position, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :team, :position])
    |> validate_required([:name, :team, :position])
  end
end
