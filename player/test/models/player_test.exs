defmodule Player.PlayerTest do
  use Player.ModelCase

  alias Player.Player

  @valid_attrs %{name: "some name", position: "some position", team: "some team"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Player.changeset(%Player{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Player.changeset(%Player{}, @invalid_attrs)
    refute changeset.valid?
  end
end
