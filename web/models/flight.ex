defmodule Flightlog.Flight do
  use Flightlog.Web, :model

  schema "flights" do
    field :date, Ecto.DateTime
    field :flight_number, :string
    field :plane_type, :string
    field :from, :string
    field :to, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:date, :flight_number, :plane_type, :from, :to])
    |> validate_required([:date, :flight_number, :plane_type, :from, :to])
  end
end
