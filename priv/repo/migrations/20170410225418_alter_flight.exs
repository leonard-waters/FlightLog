defmodule Flightlog.Repo.Migrations.CreateFlight do
  use Ecto.Migration

  def change do
    alter table(:flights) do
      add :plane_type, :string
    end

  end
end
