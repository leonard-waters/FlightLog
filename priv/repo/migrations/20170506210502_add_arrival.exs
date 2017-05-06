defmodule Flightlog.Repo.Migrations.CreateFlight do
  use Ecto.Migration

  def change do
    alter table(:flights) do
      add :arrival_date, :datetime
      add :departure_date, :datetime
      remove :date
    end

  end
end
