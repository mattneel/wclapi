defmodule Wclapi.Web.Router do
  use Wclapi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", Wclapi.Web do
    pipe_through :api
    get "/loans", WclController, :loans
  end
end
