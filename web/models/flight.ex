defmodule Flightlog.Flight do
  use Flightlog.Web, :model

  schema "flights" do
    field :departure_date, Ecto.DateTime
    field :arrival_date, Ecto.DateTime
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
    |> cast(params, [:departure_date, :arrival_date, :flight_number, :plane_type, :from, :to])
    |> validate_required([:departure_date, :arrival_date, :flight_number, :plane_type, :from, :to])
  end
end
