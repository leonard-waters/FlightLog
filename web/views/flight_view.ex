defmodule Flightlog.FlightView do
  use Flightlog.Web, :view

  def download(airport) do
    url = "https://airportapi02560c297e8.azurewebsites.net/api/Airports?code=gEjAp7qIbRDJRJYFYxcgZ1bl1sqCPaTBPsZLVxy5MGHRNFEU79etKw==&iataCode=" <> airport
    response = HTTPotion.get url
    {status, fields} = JSON.decode(response.body)
    fields
  end

  def coords(airport) do
    fields = download(airport)
    {fields["lat@"], fields["lon@"]}
  end

  def location(airport) do
    fields = download(airport)
    fields["city@"] <> ", " <> fields["country@"]
  end

  def distance(coords1, coords2) do
    Flightlog.Math.greatCircle(coords1, coords2)
  end

  def time(time1, time2) do
    Flightlog.Math.flightTime(time1, time2)
  end

  def formatTime(timestamp, airport) do

      Timex.format!(Timex.to_datetime(timestamp, "Etc/UTC"), "{D} {Mshort} {YYYY} {h24}:{m}")
  end

end
