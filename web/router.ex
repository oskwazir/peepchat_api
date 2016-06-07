defmodule Peepchat.Router do
  use Peepchat.Web, :router

  pipeline :api do
    plug :accepts, ["json", "json-api"]
    plug Guardian.Plug.VerifyHeader
    plug Guardian.Plug.LoadResource
  end

  scope "/api", Peepchat do
    pipe_through :api
    # Registration
    post "register", RegistrationController, :create
    # Route stuff to our SessionController
    post "token", SessionController, :create, as: :login
  end
end
