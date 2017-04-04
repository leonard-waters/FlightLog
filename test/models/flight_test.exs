defmodule Flightlog.FlightTest do
  use Flightlog.ModelCase

  alias Flightlog.Flight

  @valid_attrs %{date: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}, flight_number: "some content", from: "some content", to: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Flight.changeset(%Flight{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Flight.changeset(%Flight{}, @invalid_attrs)
    refute changeset.valid?
  end
end
