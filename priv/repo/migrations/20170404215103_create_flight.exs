defmodule Flightlog.Repo.Migrations.CreateFlight do
  use Ecto.Migration

  def change do
    create table(:flights) do
      add :date, :datetime
      add :flight_number, :string
      add :from, :string
      add :to, :string

      timestamps()
    end

  end
end
