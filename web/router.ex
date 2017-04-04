defmodule Flightlog.Router do
  use Flightlog.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Flightlog do
    pipe_through :browser # Use the default browser stack

    resources "/flights", FlightController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Flightlog do
  #   pipe_through :api
  # end
end
