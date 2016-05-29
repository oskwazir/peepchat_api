defmodule Peepchat.RegistrationController do
  use Peepchat.Web, :controller

  def create(conn, %{"data" => %{"type" => "user,"
    "attributes" => %{"email" => email,
      "password" => password,
      "password_confirmation" => password_confirmation}}}) do
   #Return some static JSON for now
   conn
   |> json(%{status:"Okay"})
  end
end
