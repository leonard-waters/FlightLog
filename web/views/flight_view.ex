defmodule Flightlog.FlightView do
  use Flightlog.Web, :view

  def download(airport) do
    url = "https://airportapi02560c297e8.azurewebsites.net/api/Airports?code=gEjAp7qIbRDJRJYFYxcgZ1bl==&iataCode=" <> airport
    response = HTTPotion.get url
    {status, fields} = JSON.decode(response.body)
    fields
  end

  def lat(airport) do
    fields = download(airport)
    fields["lat@"]
  end

  def lon(airport) do
    fields = download(airport)
    fields["lon@"]
  end

  def location(airport) do
    fields = download(airport)
    fields["city@"] <> ", " <> fields["country@"]
  end

end
