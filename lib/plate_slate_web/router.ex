defmodule PlateSlateWeb.Router do
  use PlateSlateWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PlateSlateWeb do
    pipe_through :api
  end

  forward "/graphql", Absinthe.Plug, schema: PlateSlateWeb.Schema

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: PlateSlateWeb.Schema,
    interface: :simple
end
