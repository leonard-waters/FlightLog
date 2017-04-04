defmodule Flightlog.Flight do
  use Flightlog.Web, :model

  schema "flights" do
    field :date, Ecto.DateTime
    field :flight_number, :string
    field :from, :string
    field :to, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:date, :flight_number, :from, :to])
    |> validate_required([:date, :flight_number, :from, :to])
  end
end
