defmodule Flightlog.Repo.Migrations.CreateFlight do
  use Ecto.Migration

  def change do
    alter table(:flights) do
      modify :arrival_date, Timex.Ecto.DateTimeWithTimezone
      modify :departure_date, Timex.Ecto.DateTimeWithTimezone
    end
    
  end
end