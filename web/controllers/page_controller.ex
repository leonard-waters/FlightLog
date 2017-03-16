defmodule Flightlog.PageController do
  use Flightlog.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
